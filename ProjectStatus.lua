-- ProjectStatus.lua
-- Auto-generated snapshot of current repo (Art-of-War)

ProjectStatus = {
    main_folder = "Art-of-War",
    
    NPCs = {
        path = "NPCs/",
        description = "All NPC types for the game",
        subfolders = {
            ClassTrainers = { path = "NPCs/ClassTrainers/", status = "complete" },
            ProfessionTrainers = { path = "NPCs/ProfessionTrainers/", status = "complete" },
            TavernKeepers = { path = "NPCs/TavernKeepers/", status = "complete" },
            Others = { path = "NPCs/Others/", status = "partial or placeholder" }
        }
    },

    Items = {
        path = "Items/",
        description = "All equipment and items a player can use",
        subfolders = {
            Sash = {
                path = "Items/Sash/",
                status = "partial",
                files = {
                    "sash.lua (partial content)"
                }
            },
            Weapons = { path = "Items/Weapons/", status = "incomplete" },
            Armor = { path = "Items/Armor/", status = "incomplete" },
            Others = { path = "Items/Others/", status = "incomplete" }
        }
    },

    DungeonsAndRuns = {
        path = "Dungeons&Runs/",
        description = "Dungeons content, currently incomplete",
        subfolders = {
            Dungeon1 = { path = "Dungeons&Runs/Dungeon1/", status = "placeholder" },
            Dungeon2 = { path = "Dungeons&Runs/Dungeon2/", status = "placeholder" }
        }
    },

    DB_for_AI = {
        path = "DB for AI/",
        description = "Structures and templates for AI-assisted development",
        status = "partial"
    },

    ProjectScripts = {
        path = "ProjectScripts/",
        description = "Helper Lua scripts for general project use",
        status = "partial"
    },

    placeholders = {
        note = "Any file named 'New Text Document.txt' or partial Lua files are considered incomplete"
    },

    roadmap = {
        note = [[
        1. Complete Items folder (Weapons, Armor, Others)
        2. Finish Dungeons development
        3. Complete Guardian-Baron system (equipment, items, skills)
        4. Update NPCs with new mechanics or quests as developed
        5. Continuously update repo_analysis.txt after changes
        ]]
    }
}

return ProjectStatus
