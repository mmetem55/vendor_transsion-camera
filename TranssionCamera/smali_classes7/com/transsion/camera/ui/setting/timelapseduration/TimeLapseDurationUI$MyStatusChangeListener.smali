.class Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI$MyStatusChangeListener;
.super Ljava/lang/Object;
.source "TimeLapseDurationUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyStatusChangeListener"
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
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI$1;)V
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI$MyStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 143
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI$MyStatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 147
    invoke-static {}, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyStatusChangeListener: key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "key_time_lapse"

    .line 148
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "0"

    .line 149
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 150
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->access$200(Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->access$300(Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;)Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;->setAutoSelected(Z)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->access$200(Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->access$200(Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0603ce

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->access$300(Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;)Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;->setAutoSelected(Z)V

    :cond_1
    :goto_0
    return-void
.end method
