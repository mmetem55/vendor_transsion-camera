.class public Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;
.super Ljava/lang/Object;
.source "MuFaceBeautyParams.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sFeatureDefaultValue:I


# instance fields
.field private mFeatureKeys:[Ljava/lang/String;

.field private mMultiFaceBeauty:Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private mSupportModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x32

    .line 41
    sput v0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->sFeatureDefaultValue:I

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 9

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->mSupportModes:Ljava/util/List;

    const-string v1, "soften"

    const-string v2, "eye"

    const-string v3, "face"

    const-string v4, "whiten"

    const-string v5, "head"

    const-string v6, "cuttingface"

    const-string v7, "nose"

    const-string v8, "five_senses"

    .line 44
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->mFeatureKeys:[Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->mMultiFaceBeauty:Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;

    .line 57
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method private getCustomValues()[I
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->mFeatureKeys:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 139
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->mFeatureKeys:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 140
    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->getValueByKey(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getValueByKey(Ljava/lang/String;)I
    .locals 5

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->mMultiFaceBeauty:Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    .line 147
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "threedimensional"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v4, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "video_eye"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    move v4, v2

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "five_senses"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v4, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "nose"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v4, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "head"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_5
    const-string v1, "hair"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_6
    const-string v1, "face"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_7
    const-string v1, "eye"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_8
    const-string v1, "cuttingface"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_9
    const-string v1, "whiten"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_a
    const-string v1, "soften"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_b
    const-string v1, "makeup"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_0

    :cond_b
    move v4, v3

    :goto_0
    const/16 v1, 0x14

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v1, 0x19

    .line 173
    sput v1, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->sFeatureDefaultValue:I

    goto :goto_1

    :pswitch_1
    const/16 v1, 0x1e

    .line 161
    sput v1, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->sFeatureDefaultValue:I

    goto :goto_1

    .line 182
    :pswitch_2
    sput v3, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->sFeatureDefaultValue:I

    goto :goto_1

    :pswitch_3
    const/16 v1, 0x55

    .line 167
    sput v1, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->sFeatureDefaultValue:I

    goto :goto_1

    :pswitch_4
    const/16 v1, 0x32

    .line 170
    sput v1, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->sFeatureDefaultValue:I

    goto :goto_1

    .line 179
    :pswitch_5
    sput v1, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->sFeatureDefaultValue:I

    goto :goto_1

    :pswitch_6
    const/16 v1, 0x41

    .line 155
    sput v1, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->sFeatureDefaultValue:I

    goto :goto_1

    :pswitch_7
    const/16 v1, 0x28

    .line 158
    sput v1, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->sFeatureDefaultValue:I

    goto :goto_1

    .line 164
    :pswitch_8
    sput v2, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->sFeatureDefaultValue:I

    goto :goto_1

    .line 152
    :pswitch_9
    sput v1, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->sFeatureDefaultValue:I

    goto :goto_1

    :pswitch_a
    const/16 v1, 0x3c

    .line 149
    sput v1, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->sFeatureDefaultValue:I

    goto :goto_1

    .line 176
    :pswitch_b
    sput v3, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->sFeatureDefaultValue:I

    .line 186
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->mMultiFaceBeauty:Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->getModeKey()Ljava/lang/String;

    move-result-object v1

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->sFeatureDefaultValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->mMultiFaceBeauty:Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCameraFacing()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, v2, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 188
    sget v0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->sFeatureDefaultValue:I

    .line 189
    sget-object v1, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getValueByKey,key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",defaultValue:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->sFeatureDefaultValue:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",valueStr:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 191
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 193
    :catch_0
    sget-object p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "Warning: getValueByKey NumberFormatException !!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_2
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4076aef7 -> :sswitch_b
        -0x357661ad -> :sswitch_a
        -0x2f04469b -> :sswitch_9
        -0x10f4dd73 -> :sswitch_8
        0x18a31 -> :sswitch_7
        0x2fd65d -> :sswitch_6
        0x30bfe2 -> :sswitch_5
        0x30cde0 -> :sswitch_4
        0x33afd3 -> :sswitch_3
        0x4410ccb2 -> :sswitch_2
        0x4f78186d -> :sswitch_1
        0x6c5d03b3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 9

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->mMultiFaceBeauty:Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->mMultiFaceBeauty:Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->isModeSupport()Z

    move-result v1

    .line 86
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->mMultiFaceBeauty:Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;

    const-string v3, "key_video_facebeauty"

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    sget-object v3, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configParameters value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , videfaceBeautyValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", support = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz v1, :cond_8

    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v4, "aiv2"

    if-eqz v1, :cond_0

    move-object v0, v4

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->mMultiFaceBeauty:Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->isVideoMode()Z

    move-result v1

    const-string v5, "off"

    if-eqz v1, :cond_1

    const-string v1, "video_facebeauty_off"

    .line 95
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v5

    .line 100
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v6, 0x1

    const-string v7, "custom"

    const-string v8, "contrast_on"

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    move v1, v6

    goto :goto_0

    :sswitch_3
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    move v1, v3

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 107
    :pswitch_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->mSupportModes:Ljava/util/List;

    invoke-interface {p0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 108
    invoke-virtual {p1, v4}, Lcom/transsion/camera/adapter/CameraParameters;->setMultiFaceBeautyMode(Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    new-array p1, v6, [I

    aput v6, p1, v3

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setMultiBeautyValue([I)V

    goto :goto_1

    .line 102
    :pswitch_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->mSupportModes:Ljava/util/List;

    invoke-interface {p0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 103
    invoke-virtual {p1, v5}, Lcom/transsion/camera/adapter/CameraParameters;->setMultiFaceBeautyMode(Ljava/lang/String;)V

    goto :goto_1

    .line 113
    :pswitch_2
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->getCustomValues()[I

    move-result-object v1

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->mSupportModes:Ljava/util/List;

    invoke-interface {p0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 115
    invoke-virtual {p1, v7}, Lcom/transsion/camera/adapter/CameraParameters;->setMultiFaceBeautyMode(Ljava/lang/String;)V

    .line 117
    :cond_6
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceBeautyFeaturesLevel([I)V

    .line 118
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setMultiBeautyValue([I)V

    goto :goto_1

    .line 121
    :pswitch_3
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->mSupportModes:Ljava/util/List;

    invoke-interface {p0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 122
    invoke-virtual {p1, v8}, Lcom/transsion/camera/adapter/CameraParameters;->setMultiFaceBeautyMode(Ljava/lang/String;)V

    .line 127
    :cond_7
    :goto_1
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setMultiFBMode(Ljava/lang/String;)V

    :cond_8
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7daf97c4 -> :sswitch_3
        -0x5069748f -> :sswitch_2
        0x1ad6f -> :sswitch_1
        0x2db0a4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->mMultiFaceBeauty:Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 3

    .line 67
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedFaceBeautyModes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->mSupportModes:Ljava/util/List;

    .line 68
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedFaceBeautyFeaturesLevelScope()Ljava/util/List;

    move-result-object p1

    .line 70
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sput p1, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->sFeatureDefaultValue:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    sget-object p1, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Multi face beauty feature scope has something wrong"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->mSupportModes:Ljava/util/List;

    const-string v1, "aiv2"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, v1

    .line 78
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "defaultValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->mMultiFaceBeauty:Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautyParams;->mSupportModes:Ljava/util/List;

    invoke-virtual {v0, p0, p1}, Lcom/transsion/camera/feature/setting/makeup/MuFaceBeautySetting;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
