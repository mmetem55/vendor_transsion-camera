.class Lcom/transsion/camera/app/common/algorithm/size/AQuarterConvert;
.super Ljava/lang/Object;
.source "AQuarterConvert.java"

# interfaces
.implements Lcom/transsion/camera/app/common/algorithm/size/IConvert;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/algorithm/size/AQuarterConvert;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/size/AQuarterConvert;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private shouldConvert(Landroid/util/Size;)Z
    .locals 4

    .line 44
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    .line 45
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    mul-int v0, p0, p1

    const v1, 0xba2840

    if-ge v0, v1, :cond_0

    .line 49
    sget-object v1, Lcom/transsion/camera/app/common/algorithm/size/AQuarterConvert;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no need to convert with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", height: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", area: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public convert(Landroid/util/Size;)Landroid/util/Size;
    .locals 2

    .line 34
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/algorithm/size/AQuarterConvert;->shouldConvert(Landroid/util/Size;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 35
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/size/AQuarterConvert;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no need to convert: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1

    .line 38
    :cond_0
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    .line 39
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    .line 40
    new-instance v0, Landroid/util/Size;

    div-int/lit8 p0, p0, 0x2

    div-int/lit8 p1, p1, 0x2

    invoke-direct {v0, p0, p1}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method
