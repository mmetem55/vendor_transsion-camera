.class synthetic Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository$1;
.super Ljava/lang/Object;
.source "FlashFeatureRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$transsion$camera$app$common$setting$ICameraSetting$SettingType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 91
    invoke-static {}, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->values()[Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository$1;->$SwitchMap$com$transsion$camera$app$common$setting$ICameraSetting$SettingType:[I

    :try_start_0
    sget-object v1, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository$1;->$SwitchMap$com$transsion$camera$app$common$setting$ICameraSetting$SettingType:[I

    sget-object v1, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository$1;->$SwitchMap$com$transsion$camera$app$common$setting$ICameraSetting$SettingType:[I

    sget-object v1, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
