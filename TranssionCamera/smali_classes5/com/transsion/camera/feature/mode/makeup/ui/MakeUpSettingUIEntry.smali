.class public Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "MakeUpSettingUIEntry.java"


# instance fields
.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    .line 25
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUIEntry;->mResources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public createCommonUI()Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUIEntry;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/makeup/R$integer;->face_beauty_type:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 32
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUIEntry;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mCommonSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUIEntry;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mCommonSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 36
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mCommonSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    return-object p0
.end method
