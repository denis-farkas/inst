import { useState } from "react";
import "./uploadImage.scss";
import axios from "axios";

const UploadImage = ({ setUpImage }) => {
  const [selectedImage, setSelectedImage] = useState(null);
  const [publicId, setPublicId] = useState("");

  const uploadImage = () => {
    const formData = new FormData();
    formData.append("file", selectedImage);
    formData.append("upload_preset", "jiuciumi");

    axios
      .post("https://api.cloudinary.com/v1_1/dfmbhkfao/image/upload", formData)
      .then((response) => {
        console.log(response);

        setUpImage(response.data.secure_url);
        setPublicId(response.data.public_id);
      });
  };

  const deleteImage = () => {
    setSelectedImage("");
    axios
      .delete(
        `https://api.cloudinary.com/v1_1/dfmbhkfao/image/destroy/${publicId}`,
        {
          params: {
            upload_preset: "jiuciumi",
          },
        }
      )
      .then((response) => {
        console.log("Image deleted successfully");
        setUpImage("");
        // Handle any further actions after successful deletion
      })
      .catch((error) => {
        console.error("Error deleting image:", error);
      });
  };
  return (
    <div>
      {selectedImage && (
        <div>
          {
            <img
              alt="not found"
              width={"250px"}
              src={URL.createObjectURL(selectedImage)}
            />
          }
          <button className="buttonUpload" onClick={deleteImage}>
            Remove
          </button>
          {/*<button class="cssbuttons-io-button">
                        <svg viewBox="0 0 640 512" fill="white" height="1em" xmlns="http://www.w3.org/2000/svg"><path d="M144 480C64.5 480 0 415.5 0 336c0-62.8 40.2-116.2 96.2-135.9c-.1-2.7-.2-5.4-.2-8.1c0-88.4 71.6-160 160-160c59.3 0 111 32.2 138.7 80.2C409.9 102 428.3 96 448 96c53 0 96 43 96 96c0 12.2-2.3 23.8-6.4 34.6C596 238.4 640 290.1 640 352c0 70.7-57.3 128-128 128H144zm79-217c-9.4 9.4-9.4 24.6 0 33.9s24.6 9.4 33.9 0l39-39V392c0 13.3 10.7 24 24 24s24-10.7 24-24V257.9l39 39c9.4 9.4 24.6 9.4 33.9 0s9.4-24.6 0-33.9l-80-80c-9.4-9.4-24.6-9.4-33.9 0l-80 80z"></path></svg>
                        <span>Upload</span>
                    </button>*/}
        </div>
      )}
      <input
        type="file"
        name="myImage"
        onChange={(event) => {
          console.log(event.target.files[0]);
          setSelectedImage(event.target.files[0]);
        }}
      />
      <button className="buttonUpload" onClick={uploadImage}>
        Upload
      </button>
    </div>
  );
};

export default UploadImage;
