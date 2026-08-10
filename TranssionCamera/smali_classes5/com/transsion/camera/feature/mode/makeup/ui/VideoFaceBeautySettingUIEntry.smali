.class public Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "VideoFaceBeautySettingUIEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUIEntry$VideoFaceBeautySettingGuideItemUI;
    }
.end annotation


# instance fields
.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    .line 24
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUIEntry;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method private getGuideLayoutsArrayId()I
    .locals 2

    .line 39
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getItdV2Support()Z

    move-result p0

    .line 41
    sget v0, Lcom/transsion/camera/utils/AreaUtil;->AREA_CODE:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    if-eqz p0, :cond_0

    .line 43
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->video_face_beauty_guide_layouts_south_asia_itdv2:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->video_face_beauty_guide_layouts_south_asia:I

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    .line 45
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->video_face_beauty_guide_layouts_universal_itdv2:I

    goto :goto_0

    :cond_2
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->video_face_beauty_guide_layouts_universal:I

    :goto_0
    return p0
.end method


# virtual methods
.method public createCommonUI()Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;
    .locals 2

    .line 29
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUIEntry;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mCommonSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    return-object v0
.end method

.method public createSettingGuideItemUI()Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;
    .locals 1

    .line 35
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUIEntry$VideoFaceBeautySettingGuideItemUI;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUIEntry;->getGuideLayoutsArrayId()I

    move-result p0

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUIEntry$VideoFaceBeautySettingGuideItemUI;-><init>(I)V

    return-object v0
.end method
