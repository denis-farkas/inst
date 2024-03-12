import { useState, useEffect } from "react";
import axios from "axios";
import WorkshopDetail from "../../components/WorkshopDetail";
import "./registeredWorkshop.scss";

const RegisteredWorkshop = () => {
  // déclaration et initialisation de la variable d'état nommée workshops à l'aide du useStatehook. Il commence par un tableau vide ( null) et fournit un moyen de mettre à jour son contenu ultérieurement à l'aide de la setWorkshops fonction.
  const [workshops, setWorkshops] = useState(null);
  let user = JSON.parse(localStorage.getItem("user"));
  const userId = user.userId;

  useEffect(() => {
    const fetchData = async () => {
      try {
        let config = {
          method: "get",
          maxBodyLength: Infinity,
          url: `http://localhost:3000/users/registeredWorkshop?userId=${userId}`,
          headers: {
            "Content-Type": "application/json",
          },
        };

        const response = await axios.request(config);
        setWorkshops(response.data.workshops);
      } catch (error) {
        console.log(error);
      }
    };

    fetchData();
  }, [userId]);
  // Structure conditionnelle pour véfifier si il y a un atelier et si le nombre d'atelier est supérieur à 0
  if (workshops && workshops.length > 0) {
    console.log(workshops);
    //Utilisation de la méthode .map pour parcourir chaque élément(item) du tableau workshops
    return (
      <div className="main">
        {workshops &&
          workshops.map((item) => (
            //Renvoie un élément JSX soit le composant nommé Workshop_detail
            <WorkshopDetail
              className="workshopCard"
              key={item.dancer_workshop_id}
              workshop={item}
              aria-label="Détail de l'atelier"
            />
            // key={item.dancer_workshop_id} :attribution d'un key accessoire unique au composant Workshop_detail
            // workshop={item} :  Cela transmet le courant item(données d'atelier) comme accessoire au Workshop_detailcomposant
          ))}
      </div>
    );
  }
};

export default RegisteredWorkshop;
