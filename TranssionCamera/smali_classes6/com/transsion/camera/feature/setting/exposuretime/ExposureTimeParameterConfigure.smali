.class public Lcom/transsion/camera/feature/setting/exposuretime/ExposureTimeParameterConfigure;
.super Ljava/lang/Object;
.source "ExposureTimeParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final DEFAULT_EXPOSURE_TIME_TABLE:[J

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mExposureTime:Lcom/transsion/camera/feature/setting/exposuretime/ExposureTime;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ExposureTimePC"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/exposuretime/ExposureTimeParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x41

    new-array v0, v0, [J

    .line 30
    fill-array-data v0, :array_0

    sput-object v0, Lcom/transsion/camera/feature/setting/exposuretime/ExposureTimeParameterConfigure;->DEFAULT_EXPOSURE_TIME_TABLE:[J

    return-void

    nop

    :array_0
    .array-data 8
        0xf424
        0x13880
        0x186a0
        0x1e848
        0x2625a
        0x30d40
        0x3d090
        0x4c4b4
        0x61a80
        0x7a120
        0x98968
        0xa2c2b
        0xc3500
        0xf4240
        0x1312d0
        0x145855
        0x186a00
        0x1e8480
        0x2625a0
        0x2b98b7
        0x30d400
        0x3d0900
        0x4c4b40
        0x54c564
        0x61a800
        0x7a1200
        0x989680
        0xa98ac7
        0xbebc20
        0xfe502b
        0x1312d00
        0x153158e
        0x17d7840
        0x1fca055
        0x2625a00
        0x2faf080
        0x3f940ab
        0x4c4b400
        0x5f5e100
        0x7735940
        0x9896800
        0xbebc200
        0xee6b280
        0x12a05f20
        0x17d78400
        0x1dcd6500
        0x2540be40
        0x2faf0800
        0x3b9aca00
        0x4a817c80
        0x59682f00
        0x5f5e1000
        0x77359400
        0x9502f900L
        0xbebc2000L
        0xee6b2800L
        0x12a05f200L
        0x165a0bc00L
        0x17d784000L
        0x1dcd65000L
        0x2540be400L
        0x2faf08000L
        0x3b9aca000L
        0x4a817c800L
        0x6fc23ac00L
    .end array-data
.end method

.method constructor <init>(Lcom/transsion/camera/feature/setting/exposuretime/ExposureTime;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/exposuretime/ExposureTimeParameterConfigure;->mExposureTime:Lcom/transsion/camera/feature/setting/exposuretime/ExposureTime;

    return-void
.end method

.method private static appendValues(Ljava/util/List;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JJ)V"
        }
    .end annotation

    cmp-long v0, p1, p3

    if-gez v0, :cond_2

    .line 124
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/transsion/camera/feature/setting/exposuretime/ExposureTimeParameterConfigure;->DEFAULT_EXPOSURE_TIME_TABLE:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-wide v3, v0, v2

    cmp-long v5, v3, p1

    if-lez v5, :cond_0

    cmp-long v5, v3, p3

    if-gez v5, :cond_0

    .line 127
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_1
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 132
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/exposuretime/ExposureTimeParameterConfigure;->mExposureTime:Lcom/transsion/camera/feature/setting/exposuretime/ExposureTime;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/exposuretime/ExposureTimeParameterConfigure;->mExposureTime:Lcom/transsion/camera/feature/setting/exposuretime/ExposureTime;

    sget-object v0, Lcom/transsion/camera/feature/setting/exposuretime/ExposureTime;->VALUE_DEFAULT:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 112
    :cond_0
    sget-object p0, Lcom/transsion/camera/feature/setting/exposuretime/ExposureTimeParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configParameters, currentValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 113
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setExposureTime(J)V

    const/4 p0, 0x0

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 7

    .line 81
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedExposureTimes()Ljava/util/List;

    move-result-object p1

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 84
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    .line 85
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 86
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x2

    .line 87
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 88
    invoke-static {v0, v2, v3, v4, v5}, Lcom/transsion/camera/feature/setting/exposuretime/ExposureTimeParameterConfigure;->appendValues(Ljava/util/List;JJ)V

    .line 89
    sget-object p1, Lcom/transsion/camera/feature/setting/exposuretime/ExposureTime;->VALUE_DEFAULT:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 90
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/exposuretime/ExposureTimeParameterConfigure;->mExposureTime:Lcom/transsion/camera/feature/setting/exposuretime/ExposureTime;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/feature/setting/exposuretime/ExposureTime;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/exposuretime/ExposureTimeParameterConfigure;->mExposureTime:Lcom/transsion/camera/feature/setting/exposuretime/ExposureTime;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/feature/setting/exposuretime/ExposureTime;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    .line 94
    :goto_0
    sget-object p0, Lcom/transsion/camera/feature/setting/exposuretime/ExposureTimeParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExposureTime Capabilities range: <"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 96
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/exposuretime/ExposureTimeParameterConfigure;->mExposureTime:Lcom/transsion/camera/feature/setting/exposuretime/ExposureTime;

    sget-object p1, Lcom/transsion/camera/feature/setting/exposuretime/ExposureTime;->VALUE_DEFAULT:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/feature/setting/exposuretime/ExposureTime;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    .line 98
    :goto_1
    sget-object p0, Lcom/transsion/camera/feature/setting/exposuretime/ExposureTimeParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExposureTime Capabilities supported: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
