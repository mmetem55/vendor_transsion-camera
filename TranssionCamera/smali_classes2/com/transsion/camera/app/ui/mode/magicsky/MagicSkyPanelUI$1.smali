.class Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$1;
.super Ljava/util/ArrayList;
.source "MagicSkyPanelUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->initMagicSkyUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

.field final synthetic val$resources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;Landroid/content/res/Resources;)V
    .locals 3

    .line 137
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$1;->val$resources:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    const v0, 0x7f1001a8

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0808e8

    const-string v2, "1"

    invoke-direct {p1, v1, v0, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    const v0, 0x7f1001a3

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0807f2

    const-string v2, "2"

    invoke-direct {p1, v1, v0, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    const v0, 0x7f1001a9

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0808e9

    const-string v2, "3"

    invoke-direct {p1, v1, v0, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    const v0, 0x7f10019c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0805fe

    const-string v2, "4"

    invoke-direct {p1, v1, v0, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    const v0, 0x7f1001aa

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0808ea

    const-string v2, "5"

    invoke-direct {p1, v1, v0, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    const v0, 0x7f1001ab

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0808eb

    const-string v2, "6"

    invoke-direct {p1, v1, v0, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    const v0, 0x7f1001a7

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0808e3

    const-string v2, "7"

    invoke-direct {p1, v1, v0, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    const v0, 0x7f1001a6

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0808e2

    const-string v2, "8"

    invoke-direct {p1, v1, v0, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    const v0, 0x7f10019f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0806f6

    const-string v2, "9"

    invoke-direct {p1, v1, v0, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    const v0, 0x7f1001a2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0807ac

    const-string v2, "10"

    invoke-direct {p1, v1, v0, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    const v0, 0x7f10019b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f08057e

    const-string v2, "11"

    invoke-direct {p1, v1, v0, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    const v0, 0x7f1001a0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f080712

    const-string v1, "12"

    invoke-direct {p1, v0, p2, v1}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
