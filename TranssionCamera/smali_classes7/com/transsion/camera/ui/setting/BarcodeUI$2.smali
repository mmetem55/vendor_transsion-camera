.class Lcom/transsion/camera/ui/setting/BarcodeUI$2;
.super Ljava/lang/Object;
.source "BarcodeUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/BarcodeUI;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field downTime:J

.field finX:I

.field finY:I

.field offsetX:I

.field offsetY:I

.field orgX:I

.field orgY:I

.field final synthetic this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

.field upTime:J


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/BarcodeUI;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    .line 368
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const-wide/16 v0, 0x12c

    const/4 v2, 0x1

    if-eqz p1, :cond_c

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v4, :cond_0

    goto/16 :goto_0

    .line 378
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->orgX:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->offsetX:I

    .line 379
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget p2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->orgY:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->offsetY:I

    if-lez p1, :cond_1

    .line 382
    iput v3, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->offsetY:I

    .line 384
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$900(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->offsetX:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->offsetY:I

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-le p1, p2, :cond_2

    .line 385
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$900(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    iget p2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->offsetX:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 386
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$800(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/content/Context;

    move-result-object p0

    const-string p1, "notification"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 387
    invoke-virtual {p0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 388
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$900(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-eqz p1, :cond_d

    iget p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->offsetY:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->offsetX:I

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    sub-int/2addr p1, p2

    const/16 p2, 0xa

    if-le p1, p2, :cond_d

    .line 389
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$900(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/widget/PopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 394
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->upTime:J

    .line 395
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->finX:I

    .line 396
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->finY:I

    .line 397
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$1100(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40a00000    # 5.0f

    div-float/2addr p1, p2

    .line 398
    iget p2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->offsetY:I

    const-string v5, "scaleY"

    const-string v6, "scaleX"

    if-gtz p2, :cond_4

    iget p2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->finX:I

    iget v7, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->orgX:I

    sub-int/2addr p2, v7

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/16 v7, 0x19

    if-ge p2, v7, :cond_4

    .line 399
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$600(Lcom/transsion/camera/ui/setting/BarcodeUI;)Z

    move-result p1

    if-nez p1, :cond_d

    new-array p1, v4, [F

    .line 400
    fill-array-data p1, :array_0

    invoke-static {v6, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    new-array p2, v4, [F

    .line 401
    fill-array-data p2, :array_1

    invoke-static {v5, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    .line 402
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {v5}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$900(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/widget/PopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v5

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, v4, v3

    aput-object p2, v4, v2

    invoke-static {v5, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 403
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$1200(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 404
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$1300(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/view/animation/PathInterpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 405
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 406
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 407
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p0, v2}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$602(Lcom/transsion/camera/ui/setting/BarcodeUI;Z)Z

    goto/16 :goto_0

    .line 409
    :cond_4
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$900(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/widget/PopupWindow;

    move-result-object p2

    const-wide/16 v0, 0xc8

    const/4 v7, 0x3

    const-string v8, "translationX"

    if-eqz p2, :cond_5

    iget p2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->finX:I

    iget v9, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->orgX:I

    if-lt p2, v9, :cond_5

    sub-int/2addr p2, v9

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, p2, p1

    if-ltz p2, :cond_5

    new-array p1, v4, [F

    .line 410
    iget p2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->offsetX:I

    int-to-float p2, p2

    aput p2, p1, v3

    const p2, 0x44a28000    # 1300.0f

    aput p2, p1, v2

    invoke-static {v8, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    new-array p2, v4, [F

    .line 411
    fill-array-data p2, :array_2

    invoke-static {v6, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    new-array v6, v4, [F

    .line 412
    fill-array-data v6, :array_3

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 413
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {v6}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$900(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/widget/PopupWindow;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v6

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, v7, v3

    aput-object p2, v7, v2

    aput-object v5, v7, v4

    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 414
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 415
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 416
    new-instance p2, Lcom/transsion/camera/ui/setting/BarcodeUI$2$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/BarcodeUI$2$1;-><init>(Lcom/transsion/camera/ui/setting/BarcodeUI$2;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_0

    .line 423
    :cond_5
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$900(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/widget/PopupWindow;

    move-result-object p2

    if-eqz p2, :cond_6

    iget p2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->finX:I

    iget v9, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->orgX:I

    if-ge p2, v9, :cond_6

    sub-int/2addr p2, v9

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, p2, p1

    if-ltz p2, :cond_6

    new-array p1, v4, [F

    .line 424
    iget p2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->offsetX:I

    int-to-float p2, p2

    aput p2, p1, v3

    const p2, -0x3b5d8000    # -1300.0f

    aput p2, p1, v2

    invoke-static {v8, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    new-array p2, v4, [F

    .line 425
    fill-array-data p2, :array_4

    invoke-static {v6, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    new-array v6, v4, [F

    .line 426
    fill-array-data v6, :array_5

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 427
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {v6}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$900(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/widget/PopupWindow;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v6

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, v7, v3

    aput-object p2, v7, v2

    aput-object v5, v7, v4

    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 428
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 429
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 430
    new-instance p2, Lcom/transsion/camera/ui/setting/BarcodeUI$2$2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/BarcodeUI$2$2;-><init>(Lcom/transsion/camera/ui/setting/BarcodeUI$2;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_0

    .line 437
    :cond_6
    iget p2, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->finX:I

    iget v9, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->orgX:I

    sub-int/2addr p2, v9

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p2, p1

    const/4 p2, 0x0

    if-gez p1, :cond_7

    const-wide/16 v9, 0x0

    .line 438
    iput-wide v9, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->upTime:J

    .line 439
    iput-wide v9, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->downTime:J

    new-array p1, v4, [F

    .line 440
    iget v9, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->offsetX:I

    int-to-float v9, v9

    aput v9, p1, v3

    aput p2, p1, v2

    invoke-static {v8, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    new-array p2, v4, [F

    .line 441
    fill-array-data p2, :array_6

    invoke-static {v6, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    new-array v6, v4, [F

    .line 442
    fill-array-data v6, :array_7

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 443
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {v6}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$900(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/widget/PopupWindow;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v6

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, v7, v3

    aput-object p2, v7, v2

    aput-object v5, v7, v4

    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 444
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 445
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 446
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$200(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x66

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 447
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$200(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 448
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$900(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->offsetY:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$900(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/2addr v0, v4

    if-le p1, v0, :cond_8

    iget p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->offsetY:I

    if-gez p1, :cond_8

    .line 449
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$900(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/widget/PopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 450
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$900(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->offsetX:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$900(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, v4

    if-gt p1, v0, :cond_a

    :cond_9
    iget p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->offsetX:I

    int-to-long v0, p1

    iget-wide v3, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->upTime:J

    iget-wide v5, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->downTime:J

    sub-long/2addr v3, v5

    div-long/2addr v0, v3

    const-wide/16 v3, 0x1

    cmp-long p1, v0, v3

    if-lez p1, :cond_b

    .line 451
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$900(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/widget/PopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 453
    :cond_b
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$900(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 454
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$900(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/widget/PopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 370
    :cond_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->orgX:I

    .line 371
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->orgY:I

    .line 372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->downTime:J

    .line 373
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$900(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 374
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$900(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const p2, 0x3f733333    # 0.95f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeUI$2;->this$0:Lcom/transsion/camera/ui/setting/BarcodeUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/BarcodeUI;->access$1000(Lcom/transsion/camera/ui/setting/BarcodeUI;)Landroid/view/animation/PathInterpolator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_d
    :goto_0
    return v2

    nop

    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data
.end method
