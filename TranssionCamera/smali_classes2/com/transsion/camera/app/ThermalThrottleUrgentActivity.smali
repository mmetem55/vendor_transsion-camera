.class public Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;
.super Landroid/app/Activity;
.source "ThermalThrottleUrgentActivity.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mConfirm:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ThermalThrottleUrgentActivity"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "isSecureCamera"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, 0x1

    .line 23
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 28
    :cond_0
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->thermalWaring(I)V

    const p1, 0x7f0c01e3

    .line 29
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 31
    iget-object p1, p0, Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;->mConfirm:Landroid/widget/TextView;

    if-nez p1, :cond_1

    const p1, 0x7f090212

    .line 32
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;->mConfirm:Landroid/widget/TextView;

    .line 33
    new-instance v0, Lcom/transsion/camera/app/ThermalThrottleUrgentActivity$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ThermalThrottleUrgentActivity$1;-><init>(Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 47
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
