.class public Lcom/transsion/camera/app/ui/AODModeIndicatorUI;
.super Ljava/lang/Object;
.source "AODModeIndicatorUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/IModeIndicatorUI;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mModeIndicator:Lcom/transsion/camera/app/ui/widget/PageIndicator;

.field private final mModeIndicatorMargin:I

.field private mModeSize:I

.field private mOrientation:I

.field private mSelectIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/AODModeIndicatorUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/AODModeIndicatorUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0703d1

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/AODModeIndicatorUI;->mModeIndicatorMargin:I

    return-void
.end method

.method private updateLayout(I)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeIndicatorUI;->mModeIndicator:Lcom/transsion/camera/app/ui/widget/PageIndicator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 96
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/PageIndicator;->setOrientation(IZ)V

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeIndicatorUI;->mModeIndicator:Lcom/transsion/camera/app/ui/widget/PageIndicator;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 98
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_3

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_2

    const/16 v1, 0x10e

    if-eq p1, v1, :cond_1

    const/16 p1, 0x51

    .line 115
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 116
    iget p1, p0, Lcom/transsion/camera/app/ui/AODModeIndicatorUI;->mModeIndicatorMargin:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x13

    .line 109
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 110
    iget p1, p0, Lcom/transsion/camera/app/ui/AODModeIndicatorUI;->mModeIndicatorMargin:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_2
    const/16 p1, 0x31

    .line 105
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 106
    iget p1, p0, Lcom/transsion/camera/app/ui/AODModeIndicatorUI;->mModeIndicatorMargin:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_3
    const/16 p1, 0x15

    .line 101
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 102
    iget p1, p0, Lcom/transsion/camera/app/ui/AODModeIndicatorUI;->mModeIndicatorMargin:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 118
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeIndicatorUI;->mModeIndicator:Lcom/transsion/camera/app/ui/widget/PageIndicator;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeIndicatorUI;->mModeIndicator:Lcom/transsion/camera/app/ui/widget/PageIndicator;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 82
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0027

    const/4 v1, 0x1

    .line 46
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0902b0

    .line 47
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/PageIndicator;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AODModeIndicatorUI;->mModeIndicator:Lcom/transsion/camera/app/ui/widget/PageIndicator;

    .line 48
    iget v0, p0, Lcom/transsion/camera/app/ui/AODModeIndicatorUI;->mModeSize:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/PageIndicator;->setPageSize(I)V

    .line 49
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AODModeIndicatorUI;->mModeIndicator:Lcom/transsion/camera/app/ui/widget/PageIndicator;

    iget v0, p0, Lcom/transsion/camera/app/ui/AODModeIndicatorUI;->mSelectIndex:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/PageIndicator;->setSelectPosition(I)V

    .line 50
    iget p1, p0, Lcom/transsion/camera/app/ui/AODModeIndicatorUI;->mOrientation:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AODModeIndicatorUI;->updateLayout(I)V

    return-object p2
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/transsion/camera/app/ui/AODModeIndicatorUI;->mOrientation:I

    .line 89
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AODModeIndicatorUI;->updateLayout(I)V

    return-void
.end method

.method public setModeSize(I)V
    .locals 3

    .line 56
    sget-object v0, Lcom/transsion/camera/app/ui/AODModeIndicatorUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setModeSize size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 57
    iput p1, p0, Lcom/transsion/camera/app/ui/AODModeIndicatorUI;->mModeSize:I

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeIndicatorUI;->mModeIndicator:Lcom/transsion/camera/app/ui/widget/PageIndicator;

    if-eqz p0, :cond_0

    .line 59
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/PageIndicator;->setPageSize(I)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeIndicatorUI;->mModeIndicator:Lcom/transsion/camera/app/ui/widget/PageIndicator;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public updateSelectedIndex(I)V
    .locals 3

    .line 65
    sget-object v0, Lcom/transsion/camera/app/ui/AODModeIndicatorUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIndex index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 66
    iput p1, p0, Lcom/transsion/camera/app/ui/AODModeIndicatorUI;->mSelectIndex:I

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeIndicatorUI;->mModeIndicator:Lcom/transsion/camera/app/ui/widget/PageIndicator;

    if-eqz p0, :cond_0

    .line 68
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/PageIndicator;->setSelectPosition(I)V

    :cond_0
    return-void
.end method
