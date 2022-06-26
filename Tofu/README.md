# TofuCore
 A core plugin for server management and utilities. This plugin is a collection of commands and features needed for every server. It can be used as a standalone plugin however it features a rich and user-friendly developer api for plugins to use and extend upon.


## Features
### Developer API
 >Tofu Command API is a simple and easy to use API for plugins to use. It is designed in a way that requires minimal boilerplate and eliminates the need for plugins to register their commands from plugin.yml files.
 > Commands have a configurable cooldown, permission, and usage message, a minimum args count and aliases.
 ```java
public class HelpCommand extends TofuCommand {

 public HelpCommand() {
  super("help", "This is help description", "tofucore.help", List.of("h", "what"), "help <pogger> ", 1, 5);
 }
 
 // You do not need to override both of these,
 // you can override whichever sender type you want the command ran by
 @Override
 public void runPlayer(Player player, String label, String[] args){
  player.sendMessage("This is help description");
 }

 @Override
 public void runConsole(CommandSender sender, String label, String[] args){
  sender.sendMessage("This is help description");
 }

}


public class Main() {
    TofuAPI.getCommandManager().registerCommand(new TestCommand()); // Register the command
}
 ```

 > Tofu GUI API is a simple yet very powerful GUI API for plugins to use. It is designed to be able to be fetched from a yaml key or created by code. The api features a nested GUI class and per GUI click handling.
 ```java
 public class TestGUI extends GUI {
    
    public TestGUI(){
        super("Test GUI", 6); // Rows are used instead of raw columns to avoid confusion
    }
    
    @Override public void setContents() {
        addFiller(); // Adds a layer of filler items to the gui (Configurable)
        addItem(new TofuItem(Material.STONE, "Test Item"), 6); // Adds the test item to the gui at slot 6
    }
    
    @Override public void onClick(Player player, int slot, ItemStack item) {
        int slot = event.getClickedSlot(); // In case per slot code is needed
        
        player.sendMessage("You clicked on slot " + slot);
    }
    
}
// To show to a player we need to create a new instance of the gui or cache it for future reference
TestGUI gui = new TestGUI(); // Or get from some cache if you stored it
gui.open(Player player); // Open the gui
 ```

 > Tofu has a built-in FakePlayer system that allows you to create a fake player on the server. These are not NPC's but OfflinePlayer instances. FakePlayer's are used to modify scoreboard teams or register them. You can find some usage in the TofuScoreboard class
 ```java
  FakePlayer fakePlayer = new FakePlayer("Name", org.bukkit.Team team, int offset);
