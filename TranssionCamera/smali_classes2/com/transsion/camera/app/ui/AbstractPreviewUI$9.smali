.class Lcom/transsion/camera/app/ui/AbstractPreviewUI$9;
.super Ljava/lang/Object;
.source "AbstractPreviewUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractPreviewUI;
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
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .locals 0

    .line 1179
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$9;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1179
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$9;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1183
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$9;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$200(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1184
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$9;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2600(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1185
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$9;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2700(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 1186
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$9;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2700(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p1

    sget-object v0, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->AUX:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    invoke-interface {p1, v0, p2}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceShow(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Z)V

    .line 1188
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$9;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1, p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2602(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Z)Z

    .line 1189
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$9;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$1000(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    :cond_1
    return-void

    .line 1193
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$9;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2800(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    if-eqz p2, :cond_3

    .line 1195
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$9;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2902(Lcom/transsion/camera/app/ui/AbstractPreviewUI;I)I

    .line 1196
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$9;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$3000(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    :cond_3
    return-void
.end method
