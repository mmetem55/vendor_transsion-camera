.class public Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderFactory;
.super Ljava/lang/Object;
.source "RenderFactory.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/algorithm/IRenderFactory;


# static fields
.field private static sCount:I


# instance fields
.field private mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget v0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderFactory;->sCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderFactory;->sCount:I

    .line 21
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderFactory;->initStreamingContext(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderFactory;->initEffectSdkContext(Landroid/content/Context;)V

    return-void
.end method

.method private initEffectSdkContext(Landroid/content/Context;)V
    .locals 2

    .line 34
    invoke-static {}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->getInstance()Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderFactory;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    if-nez v0, :cond_0

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "assets:/meishesdk.lic"

    invoke-static {p1, v1, v0}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->init(Landroid/content/Context;Ljava/lang/String;I)Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderFactory;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    :cond_0
    return-void
.end method

.method private initStreamingContext(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->getInstance()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object p0

    if-nez p0, :cond_0

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x4

    const-string v0, "assets:/meishesdk.lic"

    invoke-static {p0, v0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->init(Landroid/content/Context;Ljava/lang/String;I)Lcom/meicam/sdk/NvsStreamingContext;

    :cond_0
    return-void
.end method


# virtual methods
.method public createRender()Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender<",
            "Lcom/meicam/effect/sdk/NvsVideoEffect;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderImp;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderFactory;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderImp;-><init>(Lcom/meicam/effect/sdk/NvsEffectSdkContext;)V

    return-object v0
.end method

.method public destroy()V
    .locals 0

    .line 48
    sget p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderFactory;->sCount:I

    if-lez p0, :cond_0

    add-int/lit8 p0, p0, -0x1

    .line 49
    sput p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderFactory;->sCount:I

    .line 51
    :cond_0
    sget p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderFactory;->sCount:I

    if-nez p0, :cond_1

    .line 52
    invoke-static {}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->close()V

    .line 53
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->close()V

    :cond_1
    return-void
.end method
