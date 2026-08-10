.class Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$MyStatusChangeListener;
.super Ljava/lang/Object;
.source "TimeLapseRateUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;
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
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$1;)V
    .locals 0

    .line 257
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$MyStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 257
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$MyStatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 261
    invoke-static {}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

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

    const-string v0, "key_time_lapse_duration"

    .line 262
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 v0, 0x64

    if-eqz p1, :cond_5

    .line 263
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;

    iget-boolean v1, p1, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mIsAutoSelected:Z

    if-eqz v1, :cond_0

    .line 264
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->access$400(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;)V

    :cond_0
    const-string p1, "0"

    .line 266
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    .line 267
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mUIHandler:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$UIHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 268
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->getTabCount()I

    move-result p1

    if-ge v1, p1, :cond_2

    .line 269
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->getTabAt(I)Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 271
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 276
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;

    iget-object v3, p1, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mResources:Landroid/content/res/Resources;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    .line 278
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v4, "time_lapse_duration_setting_entry_values"

    const-string v5, "array"

    .line 277
    invoke-virtual {v3, v4, v5, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 276
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 279
    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 280
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;

    iget-object v3, v3, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    sub-int/2addr p1, v2

    invoke-virtual {v3, p1, v2}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->selectTabIndex(IZ)Z

    .line 281
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    mul-int/lit8 p1, p1, 0x3c

    move p2, v1

    .line 282
    :goto_1
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;

    iget-object v3, v3, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->getTabCount()I

    move-result v3

    if-ge p2, v3, :cond_5

    .line 283
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;

    iget-object v3, v3, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    invoke-virtual {v3, p2}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->getTabAt(I)Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 285
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 286
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v5, p1, 0x1e

    .line 287
    div-int/2addr v5, v4

    const/4 v4, 0x3

    if-ge v5, v4, :cond_4

    .line 288
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 289
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x3e4ccccd    # 0.2f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 294
    :cond_5
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mUIHandler:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$UIHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
