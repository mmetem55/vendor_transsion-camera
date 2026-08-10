.class public Lcom/transsion/camera/ui/setting/ordereditor/OrderEditorUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "OrderEditorUIEntry.java"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createPreferenceItemUI()Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/ui/setting/ordereditor/OrderEditorUI;

    new-instance v1, Lcom/transsion/camera/ui/setting/ordereditor/OrderEditorUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/ordereditor/OrderEditorUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/ui/setting/ordereditor/OrderEditorUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    return-object v0
.end method
