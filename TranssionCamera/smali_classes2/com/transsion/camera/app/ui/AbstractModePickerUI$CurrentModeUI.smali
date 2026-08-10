.class Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;
.super Ljava/lang/Object;
.source "AbstractModePickerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractModePickerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CurrentModeUI"
.end annotation


# instance fields
.field private final mCancel:Landroid/widget/ImageView;

.field private final mModeName:Landroid/widget/TextView;

.field private final mRoot:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    .line 1408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1409
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;->mRoot:Landroid/view/View;

    .line 1410
    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;->mModeName:Landroid/widget/TextView;

    .line 1411
    iput-object p3, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;->mCancel:Landroid/widget/ImageView;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/transsion/camera/app/ui/AbstractModePickerUI$1;)V
    .locals 0

    .line 1403
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;-><init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1403
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;Z)V
    .locals 0

    .line 1403
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;->setEnable(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;)V
    .locals 0

    .line 1403
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;->hide()V

    return-void
.end method

.method static synthetic access$2300(Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;)Z
    .locals 0

    .line 1403
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;->isVisible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;Ljava/lang/String;)V
    .locals 0

    .line 1403
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;->show(Ljava/lang/String;)V

    return-void
.end method

.method private hide()V
    .locals 1

    .line 1429
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;->mRoot:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private isVisible()Z
    .locals 0

    .line 1419
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;->mRoot:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setEnable(Z)V
    .locals 0

    .line 1433
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;->mCancel:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method private setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1415
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;->mCancel:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private show(Ljava/lang/String;)V
    .locals 1

    .line 1423
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;->mModeName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1424
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;->mRoot:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1425
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$CurrentModeUI;->mRoot:Landroid/view/View;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
