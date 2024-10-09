import java.io.IOException;
import java.awt.*;
import java.awt.event.KeyEvent;
import java.awt.event.InputEvent;

public class PressWinKey {
    public static void main(String[] args) {
        // Teams path
        String teamsPath = "C:\\Users\\admin_multi\\AppData\\Local\\Microsoft\\Teams\\current\\Teams.exe";

        // processBuilder
        ProcessBuilder processBuilder = new ProcessBuilder(teamsPath);
        try {
            // Start Teams 
            // processBuilder.start();
            System.out.println("Robot is running !");
            System.out.println("---Press key ['CTRL + C'] to stop it !---");

            // timer minitues
            long min = 1;
            if (args[0].length()> 0) {
                min = Long.parseLong(args[0]);
            } 
            while (true) {
                // 1 minutes
                Thread.sleep(min * 60 * 1000);

                // To Front and click
                bringWindowToFront();
            }
        } catch ( InterruptedException e) {
            e.printStackTrace();
            System.out.println("---Robot is on error.---");
        }
    }

    // Bring app to front and click
    public static void bringWindowToFront() {
        try {
            // AWT Robot
            Robot robot = new Robot();
            // ALT + TAB key
            robot.keyPress(KeyEvent.VK_ALT);
            robot.keyPress(KeyEvent.VK_TAB);
            robot.keyRelease(KeyEvent.VK_TAB);
            robot.keyRelease(KeyEvent.VK_ALT);

            // mous move + click
            // robot.mouseMove(1090, 65); 
            // robot.mousePress(InputEvent.BUTTON1_DOWN_MASK);
            // robot.mouseRelease(InputEvent.BUTTON1_DOWN_MASK);

             // Windows key press
             robot.keyPress(KeyEvent.VK_WINDOWS);
             robot.keyRelease(KeyEvent.VK_WINDOWS);

        } catch (AWTException e) {
            e.printStackTrace();
        }
    }
}
