.class Lcom/transsion/camera/app/ui/AbstractModePickerUI$OnTabScrollListenerImpl;
.super Ljava/lang/Object;
.source "AbstractModePickerUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractModePickerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnTabScrollListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)V
    .locals 0

    .line 990
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;Lcom/transsion/camera/app/ui/AbstractModePickerUI$1;)V
    .locals 0

    .line 990
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$OnTabScrollListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)V

    return-void
.end method


# virtual methods
.method public onScrolling()V
    .locals 1

    .line 1018
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$3600(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$3700(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)V

    :cond_0
    return-void
.end method

.method public onTabScroll(F)V
    .locals 2

    .line 993
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$2500(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 996
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$3400(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 999
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$1100(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Lcom/transsion/camera/app/ui/widget/TabLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getCenterNearestIndex()I

    move-result p1

    .line 1000
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$1100(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Lcom/transsion/camera/app/ui/widget/TabLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    .line 1001
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$3400(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1002
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {p1, v1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$3402(Lcom/transsion/camera/app/ui/AbstractModePickerUI;Z)Z

    .line 1003
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$3500(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)V

    return-void

    .line 1006
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$1100(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Lcom/transsion/camera/app/ui/widget/TabLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getMoreTabView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 1008
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$1100(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Lcom/transsion/camera/app/ui/widget/TabLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getMoreTabView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    aget p1, p1, v1

    .line 1009
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$1200(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 1010
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$900(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1011
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$900(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$OnTabScrollListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$1000(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)F

    move-result p0

    int-to-float p1, p1

    add-float/2addr p0, p1

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationX(F)V

    :cond_3
    return-void
.end method
