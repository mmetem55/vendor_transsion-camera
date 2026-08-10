.class public abstract Lcom/transsion/ardrawlines/utils/OnShakeClickListener;
.super Ljava/lang/Object;
.source "OnShakeClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private currentView:Landroid/view/View;

.field private enable:Z

.field private lastClickTime:J

.field private mHandler:Landroid/os/Handler;

.field private selectable:Z

.field private shakeTime:J


# direct methods
.method static bridge synthetic -$$Nest$fgetcurrentView(Lcom/transsion/ardrawlines/utils/OnShakeClickListener;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ardrawlines/utils/OnShakeClickListener;->currentView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mresetView(Lcom/transsion/ardrawlines/utils/OnShakeClickListener;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/ardrawlines/utils/OnShakeClickListener;->resetView(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    .line 15
    iput-wide v0, p0, Lcom/transsion/ardrawlines/utils/OnShakeClickListener;->shakeTime:J

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lcom/transsion/ardrawlines/utils/OnShakeClickListener;->lastClickTime:J

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/utils/OnShakeClickListener;->enable:Z

    .line 29
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/utils/OnShakeClickListener;->selectable:Z

    .line 39
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/transsion/ardrawlines/utils/OnShakeClickListener$1;

    invoke-direct {v1, p0}, Lcom/transsion/ardrawlines/utils/OnShakeClickListener$1;-><init>(Lcom/transsion/ardrawlines/utils/OnShakeClickListener;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/utils/OnShakeClickListener;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private outShakeTime(J)Z
    .locals 4

    .line 85
    iget-wide v0, p0, Lcom/transsion/ardrawlines/utils/OnShakeClickListener;->lastClickTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    sub-long/2addr p1, v0

    .line 88
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/utils/OnShakeClickListener;->getShakeTime()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private resetView(Landroid/view/View;)V
    .locals 0

    const/4 p0, 0x0

    .line 152
    invoke-virtual {p1, p0}, Landroid/view/View;->setSelected(Z)V

    const/4 p0, 0x1

    .line 153
    invoke-virtual {p1, p0}, Landroid/view/View;->setClickable(Z)V

    .line 154
    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public enable()Z
    .locals 0

    .line 115
    iget-boolean p0, p0, Lcom/transsion/ardrawlines/utils/OnShakeClickListener;->enable:Z

    return p0
.end method

.method public enableSelect()Z
    .locals 0

    .line 124
    iget-boolean p0, p0, Lcom/transsion/ardrawlines/utils/OnShakeClickListener;->selectable:Z

    return p0
.end method

.method public getShakeTime()J
    .locals 2

    .line 97
    iget-wide v0, p0, Lcom/transsion/ardrawlines/utils/OnShakeClickListener;->shakeTime:J

    return-wide v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 54
    invoke-direct {p0, v0, v1}, Lcom/transsion/ardrawlines/utils/OnShakeClickListener;->outShakeTime(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {p0, p1}, Lcom/transsion/ardrawlines/utils/OnShakeClickListener;->onPerformClick(Landroid/view/View;)V

    goto :goto_0

    .line 67
    :cond_0
    iput-wide v0, p0, Lcom/transsion/ardrawlines/utils/OnShakeClickListener;->lastClickTime:J

    :goto_0
    return-void
.end method

.method public abstract onPerformClick(Landroid/view/View;)V
.end method

.method public setEnable(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/transsion/ardrawlines/utils/OnShakeClickListener;->enable:Z

    return-void
.end method

.method public setSelectable(Z)V
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/transsion/ardrawlines/utils/OnShakeClickListener;->selectable:Z

    return-void
.end method

.method public setShakeTime(J)V
    .locals 0

    .line 106
    iput-wide p1, p0, Lcom/transsion/ardrawlines/utils/OnShakeClickListener;->shakeTime:J

    return-void
.end method
