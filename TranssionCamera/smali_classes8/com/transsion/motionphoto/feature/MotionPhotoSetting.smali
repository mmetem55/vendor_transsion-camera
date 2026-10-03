.class public Lcom/transsion/motionphoto/feature/MotionPhotoSetting;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "MotionPhotoSetting.java"


# static fields
.field private static final DEFAULT_SUPPORTED:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREF_NAME:Ljava/lang/String; = "transsion_motion_photo_prefs"

.field private static final SETTING_KEY:Ljava/lang/String; = "key_motion_photo"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 17
    const-string v0, "on"

    const-string v1, "off"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/motionphoto/feature/MotionPhotoSetting;->DEFAULT_SUPPORTED:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/motionphoto/feature/MotionPhotoSetting;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/transsion/motionphoto/feature/MotionPhotoSetting;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method private getEffectiveContext()Landroid/content/Context;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/transsion/motionphoto/feature/MotionPhotoSetting;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    .line 31
    iget-object v0, p0, Lcom/transsion/motionphoto/feature/MotionPhotoSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 33
    :cond_b
    invoke-static {}, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->currentApplication()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private readFromSharedPreferences(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 106
    const-string v0, "key_motion_photo"

    :try_start_2
    invoke-direct {p0}, Lcom/transsion/motionphoto/feature/MotionPhotoSetting;->getEffectiveContext()Landroid/content/Context;

    move-result-object v1

    .line 107
    if-eqz v1, :cond_1b

    .line 108
    const-string v2, "transsion_motion_photo_prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 109
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 110
    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_1a

    return-object p1

    .line 113
    :catchall_1a
    move-exception v0

    :cond_1b
    nop

    .line 114
    return-object p1
.end method

.method private writeToSharedPreferences(Ljava/lang/String;)V
    .registers 5

    .line 119
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/motionphoto/feature/MotionPhotoSetting;->getEffectiveContext()Landroid/content/Context;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_1c

    .line 121
    const-string v1, "transsion_motion_photo_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 122
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_motion_photo"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    goto :goto_1c

    .line 124
    :catchall_1b
    move-exception p1

    :cond_1c
    :goto_1c
    nop

    .line 125
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    .line 38
    const-string v0, "key_motion_photo"

    return-object v0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .registers 2

    .line 43
    sget-object v0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object v0
.end method

.method public getSupport()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/transsion/motionphoto/feature/MotionPhotoSetting;->getEntryValues()Ljava/util/List;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 50
    return-object v0

    .line 52
    :cond_d
    sget-object v0, Lcom/transsion/motionphoto/feature/MotionPhotoSetting;->DEFAULT_SUPPORTED:Ljava/util/List;

    return-object v0
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 57
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_9

    .line 58
    goto :goto_b

    .line 59
    :cond_9
    sget-object p1, Lcom/transsion/motionphoto/feature/MotionPhotoSetting;->DEFAULT_SUPPORTED:Ljava/util/List;

    .line 61
    :goto_b
    nop

    .line 63
    invoke-virtual {p0, p1}, Lcom/transsion/motionphoto/feature/MotionPhotoSetting;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/transsion/motionphoto/feature/MotionPhotoSetting;->setSupportedEntryValues(Ljava/util/List;)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/transsion/motionphoto/feature/MotionPhotoSetting;->setEntryValues(Ljava/util/List;)V

    .line 66
    const-string p2, "off"

    invoke-virtual {p0, p2}, Lcom/transsion/motionphoto/feature/MotionPhotoSetting;->setDefaultValue(Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/motionphoto/feature/MotionPhotoSetting;->readFromSharedPreferences(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    if-nez v0, :cond_33

    iget-object v1, p0, Lcom/transsion/motionphoto/feature/MotionPhotoSetting;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-eqz v1, :cond_33

    .line 73
    iget-object v0, p0, Lcom/transsion/motionphoto/feature/MotionPhotoSetting;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/motionphoto/feature/MotionPhotoSetting;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/motionphoto/feature/MotionPhotoSetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_33
    if-eqz v0, :cond_3c

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    move-object p2, v0

    .line 78
    :cond_3c
    invoke-virtual {p0, p2}, Lcom/transsion/motionphoto/feature/MotionPhotoSetting;->setValue(Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/transsion/motionphoto/feature/MotionPhotoSetting;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-eqz p1, :cond_51

    .line 80
    iget-object p1, p0, Lcom/transsion/motionphoto/feature/MotionPhotoSetting;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/motionphoto/feature/MotionPhotoSetting;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/motionphoto/feature/MotionPhotoSetting;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v0, p2, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 82
    :cond_51
    invoke-direct {p0, p2}, Lcom/transsion/motionphoto/feature/MotionPhotoSetting;->writeToSharedPreferences(Ljava/lang/String;)V

    .line 83
    const-string p1, "on"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->setEnabled(Z)V

    .line 84
    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 6

    .line 94
    invoke-virtual {p0}, Lcom/transsion/motionphoto/feature/MotionPhotoSetting;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 95
    invoke-virtual {p0, p1}, Lcom/transsion/motionphoto/feature/MotionPhotoSetting;->setValue(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/transsion/motionphoto/feature/MotionPhotoSetting;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-eqz v0, :cond_1f

    .line 97
    iget-object v0, p0, Lcom/transsion/motionphoto/feature/MotionPhotoSetting;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/motionphoto/feature/MotionPhotoSetting;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/motionphoto/feature/MotionPhotoSetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 99
    :cond_1f
    invoke-direct {p0, p1}, Lcom/transsion/motionphoto/feature/MotionPhotoSetting;->writeToSharedPreferences(Ljava/lang/String;)V

    .line 100
    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->setEnabled(Z)V

    .line 102
    :cond_2b
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 3

    .line 88
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 89
    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->setEnabled(Z)V

    .line 90
    return-void
.end method
