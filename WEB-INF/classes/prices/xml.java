/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package prices;

import java.io.IOException;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class xml {
    
    public static double prices(int i) throws IOException {

        String format = "UTF-8";
        double[] pricelist = new double[3];

        String xmlPath = "http://texwww.inf.uth.gr:8080/~alkourfa/price.xml";

        DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
        DocumentBuilder dBuilder = null;
        try {
            dBuilder = dbFactory.newDocumentBuilder();
        } catch (ParserConfigurationException ex) {
        }
        Document doc = null;
        try {
            doc = dBuilder.parse(xmlPath);
        } catch (SAXException ex) {
        }
        doc.getDocumentElement().normalize();

        NodeList nList = doc.getElementsByTagName("Entry");

        for (int temp = 0; temp < nList.getLength(); temp++) {

            Node nNode = nList.item(temp);

            if (nNode.getNodeType() == Node.ELEMENT_NODE) {
                Element eElement = (Element) nNode;

                NodeList nlList = eElement.getElementsByTagName("Price").item(0).getChildNodes();
                Node nValue = (Node) nlList.item(0);

                pricelist[temp] = Double.parseDouble(nValue.getNodeValue());
            }
        }

        return (pricelist[i]);

    }
    
}
