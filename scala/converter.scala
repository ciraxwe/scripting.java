import swing._
import event._

object Converter extends SimpleSwingApplication {
  def top = new MainFrame {
    val celsius = new TextField {
      text = "0"
      columns = 5
    }

    val fahrenheit = new TextField {
      text = "32"
      columns = 5
    }

    title = "Convert Celsius to Fahrenheit"
    contents = new BorderPanel {
      import BorderPanel.Position._

      val panel = new FlowPanel(celsius, new Label(" Celsius = "),
          fahrenheit, new Label(" Fahrenheit"))

      layout(panel) = North

      val button = new Button {
        text = "Convert"
      }

      layout(button) = South

      listenTo(button)
      reactions += {
        case ButtonClicked(`button`) =>
          val c = Integer.parseInt(celsius.text)
          val f = c * 9 / 5 + 32
          fahrenheit.text = Integer.toString(f)
      }
    }
  }
}

Converter.main(new Array[String](0))