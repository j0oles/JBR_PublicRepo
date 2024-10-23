/***********************************
 * Creation date : 04/05/2023
 * Created By : JBR
 * Company : ACCENTURE
 * Last modifications : 04/05/2023
 * Last modified by : JBR
 ***********************************/

global class ObtenirNomTypeObjetSObject {

    // Cette annotation rend la méthode statique disponible pour l'invocation depuis d'autres classes Apex ou depuis une règle de flux Salesforce
    @InvocableMethod(label='Obtenir nom type objet SObject')

    // Cette méthode statique accepte une liste d'IDs d'objets SObject en entrée et renvoie une liste de noms de types d'objets SObject correspondants
    global static List<String> obtenirNomTypeObjetSObject(List<Id> ids) {
        
        // Initialise une liste vide qui stockera les noms des types d'objets SObject correspondants
        List<String> result = new List<String>();
        
        // Pour chaque ID fournie en entrée, obtient le type d'objet SObject correspondant et ajoute le nom du type d'objet SObject à la liste des résultats
        for(Id id : ids) {
            SObjectType sObjectType = id.getSObjectType();
            result.add(sObjectType.getDescribe().getName());
        }
        
        // Renvoie la liste des noms de types d'objets SObject correspondants
        return result;
    }
}
