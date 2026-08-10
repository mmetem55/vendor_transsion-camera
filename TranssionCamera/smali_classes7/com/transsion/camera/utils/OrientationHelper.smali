.class public Lcom/transsion/camera/utils/OrientationHelper;
.super Ljava/lang/Object;
.source "OrientationHelper.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/OrientationHelper$OrientationEventListenerImpl;
    }
.end annotation


# instance fields
.field private mOrientation:I

.field private final mOrientationEventListener:Lcom/transsion/camera/utils/OrientationHelper$OrientationEventListenerImpl;

.field private final mOrientationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/transsion/camera/utils/OrientationHelper;->mOrientation:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/OrientationHelper;->mOrientationListeners:Ljava/util/List;

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/OrientationHelper$OrientationEventListenerImpl;

    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/utils/OrientationHelper$OrientationEventListenerImpl;-><init>(Lcom/transsion/camera/utils/OrientationHelper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/utils/OrientationHelper;->mOrientationEventListener:Lcom/transsion/camera/utils/OrientationHelper$OrientationEventListenerImpl;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/utils/OrientationHelper;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/OrientationHelper;->onOrientationChanged(I)V

    return-void
.end method

.method private static angleOfUnit90(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x2d

    .line 100
    div-int/lit8 p0, p0, 0x5a

    mul-int/lit8 p0, p0, 0x5a

    rem-int/lit16 p0, p0, 0x168

    return p0
.end method

.method private static isAngleChanged(II)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    sub-int/2addr p0, p1

    .line 92
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    rsub-int p1, p0, 0x168

    .line 93
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/16 p1, 0x46

    if-lt p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onOrientationChanged(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 79
    :cond_0
    iget v0, p0, Lcom/transsion/camera/utils/OrientationHelper;->mOrientation:I

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/OrientationHelper;->roundOrientation(II)I

    move-result p1

    .line 80
    iget v0, p0, Lcom/transsion/camera/utils/OrientationHelper;->mOrientation:I

    if-eq v0, p1, :cond_1

    .line 81
    iput p1, p0, Lcom/transsion/camera/utils/OrientationHelper;->mOrientation:I

    .line 82
    iget-object p1, p0, Lcom/transsion/camera/utils/OrientationHelper;->mOrientationListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;

    .line 83
    iget v1, p0, Lcom/transsion/camera/utils/OrientationHelper;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static roundOrientation(II)I
    .locals 1

    .line 104
    invoke-static {p0, p1}, Lcom/transsion/camera/utils/OrientationHelper;->isAngleChanged(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {p0}, Lcom/transsion/camera/utils/OrientationHelper;->angleOfUnit90(I)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method


# virtual methods
.method public getOrientation()I
    .locals 0

    .line 51
    iget p0, p0, Lcom/transsion/camera/utils/OrientationHelper;->mOrientation:I

    return p0
.end method

.method public onPause()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/utils/OrientationHelper;->mOrientationEventListener:Lcom/transsion/camera/utils/OrientationHelper$OrientationEventListenerImpl;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->disable()V

    return-void
.end method

.method public onResume()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 32
    iget-object p0, p0, Lcom/transsion/camera/utils/OrientationHelper;->mOrientationEventListener:Lcom/transsion/camera/utils/OrientationHelper$OrientationEventListenerImpl;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method public registerOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/transsion/camera/utils/OrientationHelper;->mOrientationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget v0, p0, Lcom/transsion/camera/utils/OrientationHelper;->mOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 45
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    .line 47
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/utils/OrientationHelper;->mOrientationListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setInitOrientation(I)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/transsion/camera/utils/OrientationHelper;->mOrientation:I

    return-void
.end method

.method public unregisterOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/utils/OrientationHelper;->mOrientationListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
