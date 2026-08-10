.class Lcom/transsion/camera/app/ui/BaseAppUI$EditWaterMarkFragmentStateListenerImpl;
.super Ljava/lang/Object;
.source "BaseAppUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/BaseAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditWaterMarkFragmentStateListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/BaseAppUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .locals 0

    .line 3146
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$EditWaterMarkFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$1;)V
    .locals 0

    .line 3146
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI$EditWaterMarkFragmentStateListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    return-void
.end method


# virtual methods
.method public onFragmentDestroy()V
    .locals 1

    .line 3154
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$EditWaterMarkFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$100(Lcom/transsion/camera/app/ui/BaseAppUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3157
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$EditWaterMarkFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onFragmentResume()V
    .locals 1

    .line 3149
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$EditWaterMarkFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    return-void
.end method
