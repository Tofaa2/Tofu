# TofuCore
 A core plugin for server management and utilities. This plugin is a collection of commands and features needed for every server. It can be used as a standalone plugin however it features a rich and user-friendly developer api for plugins to use and extend upon.


## Features
### Developer API
 >Tofu Command API is a simple and easy to use API for plugins to use. It is designed in a way that requires minimal boilerplate and eliminates the need for plugins to register their commands from plugin.yml files.
 > Commands have a configurable cooldown, permission, and usage message, a minimum args count and aliases.
 ```java
public class TestCommand implements Command {
    
    @Override public String getName() { return "test"; }
    @Override public String getUsage() { return "test <arg>"; }
    @Override public String getDescription() { return "A test command"; }
    @Override public String getPermission() { return "test.command"; }
    @Override public int getMinArgs() { return 1; }
    @Override public int getCooldown() { return 0; }
    @Override public List<String> getAliases() { return Arrays.asList("test"); }
    @Override public boolean isConsole() { return false; }
    @Override public void execute(CommandSender sender, String[] args) {
        
        /*
           We can cast the sender to Player safely because 
           we know that isConsole() is false;
           This api will be rewritten soon for a better implementation
         */
        Player player = (Player) sender; 
        sender.sendMessage("Test command executed");
    }
}   

public class Main() {
    TofuAPI.getCommandHandler().registerCommand(new TestCommand()); // Register the command
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
