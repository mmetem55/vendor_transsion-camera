.class Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$3;
.super Ljava/lang/Object;
.source "TimeLapseRateUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$3;->this$0:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabSelected(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;)V
    .locals 3

    .line 493
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$3;->this$0:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSupportedEntries:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->getPosition()I

    move-result v2

    aget-object v1, v1, v2

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$3;->this$0:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSupportedEntryValues:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->getPosition()I

    move-result p1

    aget-object p0, p0, p1

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->onValueChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
