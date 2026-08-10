.class Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$NullFilterEffect;
.super Ljava/lang/Object;
.source "MovieTheme.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$IFilterEffect;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullFilterEffect"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$1;)V
    .locals 0

    .line 476
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$NullFilterEffect;-><init>()V

    return-void
.end method


# virtual methods
.method public clearFilterEffect()V
    .locals 0

    return-void
.end method

.method public render(IIIIJ)I
    .locals 0

    const/4 p0, -0x4

    return p0
.end method

.method public updateFilterEffect(II)V
    .locals 0

    return-void
.end method
