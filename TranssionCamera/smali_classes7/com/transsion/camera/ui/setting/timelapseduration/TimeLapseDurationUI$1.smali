.class Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI$1;
.super Ljava/lang/Object;
.source "TimeLapseDurationUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI$1;->this$0:Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabSelected(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;)V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI$1;->this$0:Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->access$400(Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->getPosition()I

    move-result v2

    aget-object v1, v1, v2

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI$1;->this$0:Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->access$500(Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;)[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->getPosition()I

    move-result p1

    aget-object p0, p0, p1

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->access$600(Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
