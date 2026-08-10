.class Lcom/transsion/camera/feature/setting/googlelens/GoogleLens$1;
.super Ljava/lang/Object;
.source "GoogleLens.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens$1;->this$0:Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onCheckGoogleLensStatus()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens$1;->this$0:Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->access$000(Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 100
    sget-object p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onCheckGoogleLensStatus mActivity is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 103
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens$1;->this$0:Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->access$000(Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->access$200(Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;Landroid/content/Context;)V

    return-void
.end method

.method private onGoogleLensClicked()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens$1;->this$0:Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->access$000(Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    sget-object p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onGoogleLensClicked mActivity is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens$1;->this$0:Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->access$100(Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;)Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi;

    move-result-object v0

    if-nez v0, :cond_1

    .line 91
    sget-object p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onGoogleLensClicked mGoogleLensApi is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 94
    :cond_1
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(I)V

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens$1;->this$0:Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->access$100(Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;)Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens$1;->this$0:Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->access$000(Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;)Landroid/app/Activity;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi;->startLens(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 61
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 64
    sget-object v0, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onStatusChanged] GoogleLens + key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v1, "key_check_lens_status"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "key_google_lens_click"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "ignore the unneeded Key directly"

    .line 80
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "google_lens_clicked"

    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 69
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens$1;->onGoogleLensClicked()V

    goto :goto_0

    :cond_1
    const-string p1, "check_lens_status"

    .line 74
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 75
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/googlelens/GoogleLens$1;->onCheckGoogleLensStatus()V

    :cond_2
    :goto_0
    return-void
.end method
