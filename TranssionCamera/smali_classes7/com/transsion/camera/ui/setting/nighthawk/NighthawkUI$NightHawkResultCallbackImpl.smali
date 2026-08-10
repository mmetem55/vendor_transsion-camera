.class Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI$NightHawkResultCallbackImpl;
.super Ljava/lang/Object;
.source "NighthawkUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NightHawkResultCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI$NightHawkResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI$1;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI$NightHawkResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .locals 3

    if-nez p2, :cond_2

    .line 91
    invoke-static {}, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " data = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " mHintControl = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI$NightHawkResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;->access$200(Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 92
    check-cast p1, Ljava/lang/CharSequence;

    const-string p2, "on"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 93
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI$NightHawkResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;->access$300(Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI$NightHawkResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;

    iget-object v0, p1, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f100238

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI$NightHawkResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;

    iget-object v0, p1, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f08056c

    invoke-virtual {p1, v1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI$NightHawkResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setIsAsdDynamic(Z)V

    .line 97
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI$NightHawkResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;->access$400(Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI$NightHawkResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 99
    :cond_0
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->notifyNightHawkDetected()V

    goto :goto_0

    .line 101
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI$NightHawkResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz p1, :cond_2

    .line 102
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI$NightHawkResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI$NightHawkResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;->access$500(Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 105
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI$NightHawkResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;->access$600(Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI$NightHawkResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/nighthawk/NighthawkUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_2
    :goto_0
    return-void
.end method
