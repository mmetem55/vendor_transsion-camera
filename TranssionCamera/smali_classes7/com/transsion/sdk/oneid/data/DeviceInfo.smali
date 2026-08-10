.class public Lcom/transsion/sdk/oneid/data/DeviceInfo;
.super Lcom/transsion/sdk/oneid/data/OneBaseInfo;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public battery:Ljava/lang/String;

.field public brand:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public plat:Ljava/lang/String;

.field public ram:Ljava/lang/String;

.field public rom:Ljava/lang/String;

.field public screen_dpi:Ljava/lang/String;

.field public screen_h:Ljava/lang/String;

.field public screen_w:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->brand:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->model:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->plat:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->rom:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->ram:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->battery:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->screen_h:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->screen_w:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->screen_dpi:Ljava/lang/String;

    .line 14
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->brand:Ljava/lang/String;

    .line 15
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->model:Ljava/lang/String;

    :try_start_0
    const-string v1, "ro.board.platform"

    .line 17
    invoke-static {p1, v1}, Lcom/transsion/sdk/oneid/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->plat:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 20
    :catch_0
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->plat:Ljava/lang/String;

    .line 22
    :goto_0
    invoke-static {}, Lcom/transsion/sdk/oneid/d;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->rom:Ljava/lang/String;

    .line 23
    invoke-static {p1}, Lcom/transsion/sdk/oneid/d;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->ram:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Lcom/transsion/sdk/oneid/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->battery:Ljava/lang/String;

    :try_start_1
    const-string v1, "window"

    .line 27
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 28
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 29
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->screen_w:Ljava/lang/String;

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->screen_h:Ljava/lang/String;

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/DeviceInfo;->screen_dpi:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
