.class public Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;
.super Ljava/lang/Object;
.source "FaceBeautyHelper.java"


# static fields
.field public static final AI:Ljava/lang/String; = "ai"

.field public static final AIV2:Ljava/lang/String; = "aiv2"

.field private static final BACK_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

.field private static final BACK_CAMERA_SKIN:[Ljava/lang/String;

.field public static final CUSTOM_KEY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EYE_CUSTOM:Ljava/lang/String; = "eye"

.field public static final FACE_BEAUTY_DEFAULT_FEATURE:Ljava/lang/String; = "face_beauty_default_feature"

.field public static final FACE_CUSTOM:Ljava/lang/String; = "face"

.field private static final FRONT_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

.field private static final FRONT_CAMERA_SKIN:[Ljava/lang/String;

.field private static final PROPERTY_CAMERA_SKIN:Ljava/lang/String; = "debug.vendor.sys.oobe.camera_skin"

.field public static final RESET:Ljava/lang/String; = "reset"

.field public static final SOFTEN_CUSTOM:Ljava/lang/String; = "soften"

.field private static final SUPPORT_BACK_CAMERA_LIGHT_SKIN_FEMALE:[Ljava/lang/String;

.field private static final SUPPORT_BACK_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

.field private static final SUPPORT_BACK_CAMERA_SKIN_FEMALE:[Ljava/lang/String;

.field private static final SUPPORT_BACK_CAMERA_SKIN_MALE:[Ljava/lang/String;

.field private static final SUPPORT_FRONT_CAMERA_LIGHT_SKIN_FEMALE:[Ljava/lang/String;

.field private static final SUPPORT_FRONT_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

.field private static final SUPPORT_FRONT_CAMERA_SKIN_FEMALE:[Ljava/lang/String;

.field private static final SUPPORT_FRONT_CAMERA_SKIN_MALE:[Ljava/lang/String;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field public static final WHITEN_CUSTOM:Ljava/lang/String; = "whiten"


# instance fields
.field private mCustomDefaultValueArray:[Ljava/lang/String;

.field private final mCustomValueArray:[Ljava/lang/String;

.field private final mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private final mFaceAttributeSupport:Z

.field private final mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mGender:Ljava/lang/String;

.field private mLensFacing:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "30"

    const-string v1, "0"

    const-string v2, "40"

    .line 48
    filled-new-array {v0, v1, v2, v0}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->SUPPORT_FRONT_CAMERA_SKIN_MALE:[Ljava/lang/String;

    const-string v3, "55"

    const-string v4, "65"

    .line 49
    filled-new-array {v3, v1, v4, v0}, [Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->SUPPORT_FRONT_CAMERA_SKIN_FEMALE:[Ljava/lang/String;

    const-string v5, "20"

    .line 50
    filled-new-array {v0, v5, v2, v0}, [Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->SUPPORT_FRONT_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

    .line 51
    filled-new-array {v3, v2, v4, v2}, [Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->SUPPORT_FRONT_CAMERA_LIGHT_SKIN_FEMALE:[Ljava/lang/String;

    .line 52
    filled-new-array {v0, v1, v1, v1}, [Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->SUPPORT_BACK_CAMERA_SKIN_MALE:[Ljava/lang/String;

    .line 53
    filled-new-array {v3, v1, v1, v1}, [Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->SUPPORT_BACK_CAMERA_SKIN_FEMALE:[Ljava/lang/String;

    .line 54
    filled-new-array {v0, v5, v1, v1}, [Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->SUPPORT_BACK_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

    .line 55
    filled-new-array {v3, v2, v1, v1}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->SUPPORT_BACK_CAMERA_LIGHT_SKIN_FEMALE:[Ljava/lang/String;

    const-string v3, "43"

    .line 56
    filled-new-array {v3, v1, v4, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->FRONT_CAMERA_SKIN:[Ljava/lang/String;

    const-string v0, "60"

    .line 57
    filled-new-array {v0, v2, v4, v2}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->FRONT_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

    .line 58
    filled-new-array {v3, v1, v1, v1}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->BACK_CAMERA_SKIN:[Ljava/lang/String;

    .line 59
    filled-new-array {v0, v2, v1, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->BACK_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

    const-string v0, "soften"

    const-string v1, "whiten"

    const-string v2, "face"

    const-string v3, "eye"

    .line 61
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->CUSTOM_KEY_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mCustomValueArray:[Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->FRONT_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mCustomDefaultValueArray:[Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 84
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "face_attribute_support"

    invoke-static {p1, v0, p3}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mFaceAttributeSupport:Z

    .line 88
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p1

    const-string p3, "key_gender_attribute_value"

    const-string v0, "2"

    .line 87
    invoke-virtual {p2, p3, v0, p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mGender:Ljava/lang/String;

    return-void
.end method

.method private getSkinColor()Ljava/lang/String;
    .locals 1

    const-string p0, "debug.vendor.sys.oobe.camera_skin"

    const-string v0, "white"

    .line 118
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initCustomValueArray()V
    .locals 7

    .line 193
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->CUSTOM_KEY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 194
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mCustomValueArray:[Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    sget-object v4, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->CUSTOM_KEY_LIST:Ljava/util/List;

    .line 195
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mCustomDefaultValueArray:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->getStoreScope()Ljava/lang/String;

    move-result-object v6

    .line 194
    invoke-virtual {v3, v4, v5, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public customDefault()Z
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mCustomValueArray:[Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mCustomDefaultValueArray:[Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getFeatureId()I
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v1, 0x1

    .line 210
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    const-string v2, "face_beauty_default_feature"

    .line 209
    invoke-virtual {v0, v2, v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 211
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getFeatureProgress(Ljava/lang/String;)I
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mCustomDefaultValueArray:[Ljava/lang/String;

    sget-object v2, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->CUSTOM_KEY_LIST:Ljava/util/List;

    .line 101
    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    .line 100
    invoke-virtual {v0, p1, v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getStoreScope()Ljava/lang/String;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initCustomValue(Ljava/lang/String;)V
    .locals 7

    .line 122
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mLensFacing:Ljava/lang/String;

    .line 123
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->FRONT_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

    .line 124
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->getSkinColor()Ljava/lang/String;

    move-result-object v0

    .line 125
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mFaceAttributeSupport:Z

    const-string v2, "0"

    const-string v3, "white"

    const-string v4, "1"

    if-eqz v1, :cond_7

    .line 126
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mLensFacing:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 128
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mGender:Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 129
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->SUPPORT_FRONT_CAMERA_SKIN_MALE:[Ljava/lang/String;

    goto :goto_0

    .line 131
    :cond_0
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->SUPPORT_FRONT_CAMERA_SKIN_FEMALE:[Ljava/lang/String;

    goto :goto_0

    .line 134
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mGender:Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 135
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->SUPPORT_FRONT_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

    goto :goto_0

    .line 137
    :cond_2
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->SUPPORT_FRONT_CAMERA_LIGHT_SKIN_FEMALE:[Ljava/lang/String;

    .line 141
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mLensFacing:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 142
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 143
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mGender:Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 144
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->SUPPORT_BACK_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

    goto :goto_1

    .line 146
    :cond_4
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->SUPPORT_BACK_CAMERA_LIGHT_SKIN_FEMALE:[Ljava/lang/String;

    goto :goto_1

    .line 149
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mGender:Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 150
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->SUPPORT_BACK_CAMERA_SKIN_MALE:[Ljava/lang/String;

    goto :goto_1

    .line 152
    :cond_6
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->SUPPORT_BACK_CAMERA_SKIN_FEMALE:[Ljava/lang/String;

    goto :goto_1

    .line 157
    :cond_7
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mLensFacing:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 158
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 159
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->FRONT_CAMERA_SKIN:[Ljava/lang/String;

    .line 164
    :cond_8
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mLensFacing:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 165
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 166
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->BACK_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

    goto :goto_1

    .line 168
    :cond_9
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->BACK_CAMERA_SKIN:[Ljava/lang/String;

    .line 173
    :cond_a
    :goto_1
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mCustomDefaultValueArray:[Ljava/lang/String;

    .line 174
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    .line 177
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v3, 0x0

    const-string v4, "soften"

    invoke-virtual {v2, v4, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    sget-object v3, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initCustomValue default: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mGender:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mFaceAttributeSupport:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v2, :cond_b

    .line 183
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->CUSTOM_KEY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_b

    .line 184
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    sget-object v5, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->CUSTOM_KEY_LIST:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aget-object v6, p1, v3

    invoke-virtual {v4, v5, v6, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 189
    :cond_b
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->initCustomValueArray()V

    return-void
.end method

.method public restoreDefault()V
    .locals 7

    .line 110
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->CUSTOM_KEY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 111
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mCustomValueArray:[Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mCustomDefaultValueArray:[Ljava/lang/String;

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    .line 112
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    sget-object v4, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->CUSTOM_KEY_LIST:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mCustomDefaultValueArray:[Ljava/lang/String;

    aget-object v5, v5, v2

    .line 113
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->getStoreScope()Ljava/lang/String;

    move-result-object v6

    .line 112
    invoke-virtual {v3, v4, v5, v6, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mGender:Ljava/lang/String;

    return-void
.end method

.method public updateFeatureId(I)V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 205
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    const-string v1, "face_beauty_default_feature"

    const/4 v2, 0x0

    .line 204
    invoke-virtual {v0, v1, p1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public updateFeatureProgress(Ljava/lang/String;I)V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mCustomValueArray:[Ljava/lang/String;

    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->CUSTOM_KEY_LIST:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
