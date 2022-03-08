import dbf
from commands.makeuser import *
import nextcord
from commands.getEmoji import *

async def shop(message,user_id):
    if not dbf.doesUserExist(user_id):
       return await makeuser(message)
        
    shop_embed = nextcord.Embed()

    shop_table = []
    # different shops per rarity
    # common
    if message.content.lower() == ("shop common"):
        shop_embed.title = "Common"
        shop_embed.color = nextcord.Color.light_grey()
        for elem in dbf.getShopTableByRarity("Common"):
            shop_table.append(elem)
    # uncommon
    elif message.content.lower() == ("shop uncommon"):
        shop_embed.title = "Uncommon"
        shop_embed.color = nextcord.Color.green()
        for elem in dbf.getShopTableByRarity("Uncommon"):
            shop_table.append(elem)
    # rare
    elif message.content.lower() == ("shop rare"):
        shop_embed.title = "Rare"
        shop_embed.color = nextcord.Color.blue()
        for elem in dbf.getShopTableByRarity("Rare"):
            shop_table.append(elem)
    # legendary
    elif message.content.lower() == ("shop legendary"):
        shop_embed.title = "Legendary"
        shop_embed.color = nextcord.Color.gold()
        for elem in dbf.getShopTableByRarity("Legendary"):
            shop_table.append(elem)
    # unique
    elif message.content.lower() == ("shop unique"):
        shop_embed.title = "Unique"
        shop_embed.color = nextcord.Color.purple()
        for elem in dbf.getShopTableByRarity("Unique"):
            shop_table.append(elem)
    else:
        shop_embed.title = "Shops"
        shop_embed.color = nextcord.Color.blurple()

    if not shop_table == []:
        # for each entry in the shop table, build the embed
        for entry in shop_table:
            item_name = entry[0]
            item_price = entry[1]
            emoji_name = str(item_name).replace(" ", "").replace(
                "-", "").replace("_", "").replace("(", "").replace(")", "")
            emojistr = await getEmoji(emoji_name)
            shop_embed.add_field(
                name="{0} {1}".format(item_name, emojistr), value="{0} {1}".format(gold_emoji, item_price), inline=True)
    else:
        shop_embed.add_field(name="shop common",
                                value="displays common fish and their sell values", inline=False)
        shop_embed.add_field(name="shop uncommon",
                                value="displays uncommon fish and their sell values", inline=False)
        shop_embed.add_field(
            name="shop rare", value="displays rare fish and their sell values", inline=False)
        shop_embed.add_field(name="shop legendary",
                                value="displays legendary fish and their sell values", inline=False)
        shop_embed.add_field(name="shop unique",
                                value="displays unique fish and their sell values", inline=False)
    await message.channel.send(embed=shop_embed)