import xml.etree.ElementTree as ET

v0 = 10  # Egoの初速　単位はm/s
vp = 0.1  # 歩行者の速度　単位はm/s
Sx_p = 0  # 歩行者の
Dy = 10
B2y = Dy - 2


# XMLファイルを読み込む
tree = ET.parse("/home/kotoriyabe/ドキュメント/esmini-1/resources/tier4/1-1.xosc")
root = tree.getroot()

# import xml.etree.ElementTree as ET

# # 計算したい変数
# vp = 0.1  # 歩行者の速度

# # XMLファイルを読み込む
# tree = ET.parse("/home/kotoriyabe/ドキュメント/esmini-1/resources/tier4/1-1.xosc")
# root = tree.getroot()

# # 変数をテンプレート内の適切な場所に置換
# for param in root.iter("ParameterDeclaration"):
#     if param.get("name") == "PedestrianSpeed":
#         param.set("value", str(vp))

# # 新しいファイルに保存
# tree.write("/home/kotoriyabe/ドキュメント/esmini-1/resources/tier4/1-1.xosc")
