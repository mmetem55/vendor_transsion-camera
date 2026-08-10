.class public Lcom/transsion/camera/app/ui/view/ShutterButtonView;
.super Lcom/transsion/camera/app/ui/widget/RotateImageView;
.source "ShutterButtonView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

.field private mLongPressed:Z

.field private mOldPressed:Z

.field private mPressed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ShutterButtonView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 40
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mPressed:Z

    .line 52
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/view/ShutterButtonView;Z)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->callShutterButtonFocus(Z)V

    return-void
.end method

.method private callShutterButtonFocus(Z)V
    .locals 3

    .line 123
    sget-object v0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callShutterButtonFocus isEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isClickable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {p0}, Landroid/widget/ImageView;->isClickable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", pressed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPressed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mPressed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mPressed:Z

    if-ne v0, p1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mPressed:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    .line 126
    :cond_1
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mPressed:Z

    if-eqz p1, :cond_2

    .line 128
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;->onShutterDown()V

    goto :goto_0

    .line 130
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;->onShutterUp()V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 133
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mLongPressed:Z

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, p1, v0}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 59
    invoke-virtual {p0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private onTouchShutterCancel()V
    .locals 3

    .line 158
    sget-object v0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchShutterCancel mLongPressed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mLongPressed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPressed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mPressed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mLongPressed:Z

    if-nez v1, :cond_0

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mPressed:Z

    if-eqz p0, :cond_0

    .line 160
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;->onShutterCancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    .line 72
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 74
    invoke-virtual {p0}, Landroid/widget/ImageView;->isPressed()Z

    move-result v0

    .line 75
    sget-object v1, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawableStateChanged: pressed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mOldPressed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mOldPressed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 77
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mOldPressed:Z

    if-eq v0, v1, :cond_1

    .line 78
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mOldPressed:Z

    if-nez v0, :cond_0

    .line 96
    new-instance v1, Lcom/transsion/camera/app/ui/view/ShutterButtonView$1;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView$1;-><init>(Lcom/transsion/camera/app/ui/view/ShutterButtonView;Z)V

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 103
    :cond_0
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->callShutterButtonFocus(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 149
    sget-object p1, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLongClick isEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isClickable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->isClickable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPressed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mPressed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->isClickable()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mPressed:Z

    if-eqz p1, :cond_2

    .line 151
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;->onShutterLongClick()V

    const/4 p1, 0x1

    .line 152
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mLongPressed:Z

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 110
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->onTouchShutterCancel()V

    :cond_1
    const/4 p1, 0x0

    .line 116
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    :goto_0
    return v0
.end method

.method public performClick()Z
    .locals 3

    .line 138
    sget-object v0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performClick isEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isClickable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->isClickable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mLongPressed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mLongPressed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPressed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mPressed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 140
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    .line 141
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mLongPressed:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->isClickable()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mPressed:Z

    if-eqz v1, :cond_2

    .line 142
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;->onShutterClick()V

    :cond_2
    return v0
.end method

.method public setOnShutterListener(Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    return-void
.end method
