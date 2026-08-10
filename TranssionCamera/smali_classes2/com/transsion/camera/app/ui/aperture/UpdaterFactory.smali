.class public Lcom/transsion/camera/app/ui/aperture/UpdaterFactory;
.super Ljava/lang/Object;
.source "UpdaterFactory.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mShelterStyle:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/transsion/camera/app/ui/aperture/UpdaterFactory;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a0019

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/aperture/UpdaterFactory;->mShelterStyle:I

    return-void
.end method


# virtual methods
.method createUpdater()Lcom/transsion/camera/app/ui/aperture/IShelterUpdater;
    .locals 2

    .line 36
    iget v0, p0, Lcom/transsion/camera/app/ui/aperture/UpdaterFactory;->mShelterStyle:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 37
    new-instance v0, Lcom/transsion/camera/app/ui/aperture/ConfigUpdater;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/aperture/UpdaterFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/aperture/ConfigUpdater;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    const/4 v1, 0x3

    if-ne v1, v0, :cond_1

    .line 39
    new-instance v0, Lcom/transsion/camera/app/ui/aperture/FullConfigUpdater;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/aperture/UpdaterFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/aperture/FullConfigUpdater;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_1
    const/4 v1, 0x2

    if-ne v1, v0, :cond_2

    .line 41
    new-instance v0, Lcom/transsion/camera/app/ui/aperture/RectangleUpdater;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/aperture/UpdaterFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/aperture/RectangleUpdater;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 43
    :cond_2
    new-instance v0, Lcom/transsion/camera/app/ui/aperture/DefaultUpdater;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/aperture/UpdaterFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/aperture/DefaultUpdater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
