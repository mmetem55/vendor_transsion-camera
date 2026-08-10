.class Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute$1;
.super Ljava/lang/Object;
.source "FaceAttribute.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute$1;->this$0:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenderAttributeCallback([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V
    .locals 6

    if-eqz p1, :cond_2

    .line 39
    array-length v0, p1

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 40
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getGender()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 41
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getAge()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 42
    :goto_0
    array-length v3, p1

    const-string v4, "1"

    if-ge v0, v3, :cond_1

    .line 43
    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getGender()I

    move-result v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v3, v5, :cond_0

    .line 45
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getAge()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string p1, "0"

    .line 49
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute$1;->this$0:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 50
    sget-object p1, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onGenderAttributeCallback] value1 = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute$1;->this$0:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->onValueChanged(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setGenderValue(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setAgeValue(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
