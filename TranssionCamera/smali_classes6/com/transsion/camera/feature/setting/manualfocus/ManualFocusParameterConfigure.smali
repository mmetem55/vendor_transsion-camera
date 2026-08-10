.class public Lcom/transsion/camera/feature/setting/manualfocus/ManualFocusParameterConfigure;
.super Ljava/lang/Object;
.source "ManualFocusParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mManualFocus:Lcom/transsion/camera/feature/setting/manualfocus/ManualFocus;

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ManualFocusPC"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/manualfocus/ManualFocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/setting/manualfocus/ManualFocus;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/manualfocus/ManualFocusParameterConfigure;->mManualFocus:Lcom/transsion/camera/feature/setting/manualfocus/ManualFocus;

    .line 37
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/manualfocus/ManualFocusParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method private static appendValues(Ljava/util/List;FF)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;FF)V"
        }
    .end annotation

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    div-float/2addr p1, p2

    sub-float p1, p2, p1

    const/high16 v0, 0x42480000    # 50.0f

    div-float/2addr p1, v0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x32

    if-gt v0, v1, :cond_1

    int-to-float v1, v0

    mul-float/2addr v1, p1

    sub-float v1, p2, v1

    .line 98
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 4

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/manualfocus/ManualFocusParameterConfigure;->mManualFocus:Lcom/transsion/camera/feature/setting/manualfocus/ManualFocus;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "continuous-picture"

    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "auto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 81
    sget-object v1, Lcom/transsion/camera/feature/setting/manualfocus/ManualFocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configParameters, select value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", set value:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setFocusDistance(F)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/manualfocus/ManualFocusParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/manualfocus/ManualFocusParameterConfigure;->mManualFocus:Lcom/transsion/camera/feature/setting/manualfocus/ManualFocus;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/manualfocus/ManualFocus;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 9

    .line 47
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 48
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedFocusDistanceRange()Landroid/util/Range;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "continuous-picture"

    if-eqz v0, :cond_2

    .line 52
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v1

    .line 53
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 54
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "auto"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 55
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 56
    :cond_0
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move-object v4, v2

    :cond_3
    if-eqz p1, :cond_6

    .line 61
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 62
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sub-float v5, p1, v0

    .line 63
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v5, v5, v7

    if-gez v5, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-nez v1, :cond_5

    .line 65
    invoke-static {v4, v0, p1}, Lcom/transsion/camera/feature/setting/manualfocus/ManualFocusParameterConfigure;->appendValues(Ljava/util/List;FF)V

    .line 67
    :cond_5
    sget-object v1, Lcom/transsion/camera/feature/setting/manualfocus/ManualFocusParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FocusDistance Capabilities range: <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_6
    if-eqz v4, :cond_7

    .line 69
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/manualfocus/ManualFocusParameterConfigure;->mManualFocus:Lcom/transsion/camera/feature/setting/manualfocus/ManualFocus;

    invoke-virtual {p0, v4, v3}, Lcom/transsion/camera/feature/setting/manualfocus/ManualFocus;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 72
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/manualfocus/ManualFocusParameterConfigure;->mManualFocus:Lcom/transsion/camera/feature/setting/manualfocus/ManualFocus;

    invoke-virtual {p0, v2, v3}, Lcom/transsion/camera/feature/setting/manualfocus/ManualFocus;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
