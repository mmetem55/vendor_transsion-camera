.class public Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "VideoMakeUpSettingUIEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUIEntry$VideoMakeUpSettingGuideItemUI;
    }
.end annotation


# instance fields
.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    .line 23
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUIEntry;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method private getGuideLayoutsArrayId()I
    .locals 1

    .line 39
    sget p0, Lcom/transsion/camera/utils/AreaUtil;->AREA_CODE:I

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    .line 41
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->video_make_up_guide_layouts_south_asia:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne v0, p0, :cond_1

    .line 43
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->video_make_up_guide_layouts_africa:I

    goto :goto_0

    .line 45
    :cond_1
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->video_make_up_guide_layouts_universal:I

    :goto_0
    return p0
.end method


# virtual methods
.method public createCommonUI()Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;
    .locals 2

    .line 28
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUIEntry;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mCommonSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    return-object v0
.end method

.method public createSettingGuideItemUI()Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;
    .locals 1

    .line 34
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUIEntry$VideoMakeUpSettingGuideItemUI;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUIEntry;->getGuideLayoutsArrayId()I

    move-result p0

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUIEntry$VideoMakeUpSettingGuideItemUI;-><init>(I)V

    return-object v0
.end method
