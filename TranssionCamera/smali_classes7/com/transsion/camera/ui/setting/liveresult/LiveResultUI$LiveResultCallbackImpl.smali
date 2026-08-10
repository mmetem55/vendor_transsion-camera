.class Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$LiveResultCallbackImpl;
.super Ljava/lang/Object;
.source "LiveResultUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LiveResultCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$LiveResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$1;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$LiveResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .locals 0

    .line 162
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$LiveResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;

    check-cast p1, Lcom/transsion/camera/feature/setting/liveresult/Result;

    invoke-static {p2, p1}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->access$102(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;Lcom/transsion/camera/feature/setting/liveresult/Result;)Lcom/transsion/camera/feature/setting/liveresult/Result;

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$LiveResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->access$200(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V

    return-void
.end method
