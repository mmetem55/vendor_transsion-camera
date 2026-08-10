.class Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade$1;
.super Ljava/lang/Object;
.source "FlashFacade.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 385
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ringscreenlight"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->access$000(Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;)Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->access$000(Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;)Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->facingFront()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 386
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "When it\'s facing camera,go to AR core,close ring screen light."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 387
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->access$200(Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
