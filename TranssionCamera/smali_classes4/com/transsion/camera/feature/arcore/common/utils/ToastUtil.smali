.class public Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# static fields
.field private static final mLock:Ljava/lang/Object;

.field private static sToastUtil:Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;


# instance fields
.field private mTextView:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createToast()Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;
    .locals 2

    .line 20
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;->sToastUtil:Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;

    invoke-direct {v1}, Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;->sToastUtil:Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;

    .line 24
    :cond_0
    sget-object v1, Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;->sToastUtil:Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public disappear()V
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    if-eqz p0, :cond_0

    .line 60
    invoke-virtual {p0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    return-void
.end method

.method public show(Landroid/content/Context;I)V
    .locals 3

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/arcore/R$layout;->ar_toast_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;->disappear()V

    .line 47
    sget v1, Lcom/transsion/camera/feature/arcore/R$id;->toast_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;->mTextView:Landroid/widget/TextView;

    .line 48
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 49
    new-instance p2, Landroid/widget/Toast;

    invoke-direct {p2, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/arcore/R$dimen;->toast_bottom_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 52
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    const/16 v1, 0x50

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, p1}, Landroid/widget/Toast;->setGravity(III)V

    .line 53
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 54
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public show(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/arcore/R$layout;->ar_toast_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 31
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;->disappear()V

    .line 32
    sget v1, Lcom/transsion/camera/feature/arcore/R$id;->toast_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;->mTextView:Landroid/widget/TextView;

    .line 33
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    new-instance p2, Landroid/widget/Toast;

    invoke-direct {p2, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/arcore/R$dimen;->horizontal_recycle_root_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 37
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    const/16 v1, 0x50

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, p1}, Landroid/widget/Toast;->setGravity(III)V

    .line 38
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 39
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
