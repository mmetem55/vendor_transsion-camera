.class public Lcom/transsion/ardrawlines/base/BaseViewHolder;
.super Ljava/lang/Object;
.source "BaseViewHolder.java"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseViewHolder"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addShakeClick(Landroid/view/View;)V
    .locals 1

    .line 53
    new-instance v0, Lcom/transsion/ardrawlines/base/BaseViewHolder$1;

    invoke-direct {v0, p0}, Lcom/transsion/ardrawlines/base/BaseViewHolder$1;-><init>(Lcom/transsion/ardrawlines/base/BaseViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 18
    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onCreate(Landroidx/lifecycle/LifecycleOwner;)V

    .line 19
    sget-object p0, Lcom/transsion/ardrawlines/base/BaseViewHolder;->TAG:Ljava/lang/String;

    const-string p1, "LifecycleObserver onCreate ..."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    .line 49
    sget-object p0, Lcom/transsion/ardrawlines/base/BaseViewHolder;->TAG:Ljava/lang/String;

    const-string p1, "LifecycleObserver onDestroy ..."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onPause(Landroidx/lifecycle/LifecycleOwner;)V

    .line 37
    sget-object p0, Lcom/transsion/ardrawlines/base/BaseViewHolder;->TAG:Ljava/lang/String;

    const-string p1, "LifecycleObserver onPause ..."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onResume(Landroidx/lifecycle/LifecycleOwner;)V

    .line 31
    sget-object p0, Lcom/transsion/ardrawlines/base/BaseViewHolder;->TAG:Ljava/lang/String;

    const-string p1, "LifecycleObserver onResume ..."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 24
    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onStart(Landroidx/lifecycle/LifecycleOwner;)V

    .line 25
    sget-object p0, Lcom/transsion/ardrawlines/base/BaseViewHolder;->TAG:Ljava/lang/String;

    const-string p1, "LifecycleObserver onStart ..."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onStop(Landroidx/lifecycle/LifecycleOwner;)V

    .line 43
    sget-object p0, Lcom/transsion/ardrawlines/base/BaseViewHolder;->TAG:Ljava/lang/String;

    const-string p1, "LifecycleObserver onStop ..."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 0

    return-void
.end method
