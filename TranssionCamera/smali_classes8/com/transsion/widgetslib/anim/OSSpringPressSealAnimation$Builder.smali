.class public Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;
.super Ljava/lang/Object;
.source "OSSpringPressSealAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private clickListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;

.field private dampingRatio:F

.field private endDampingRatio:F

.field private endStiffness:F

.field private finalValue:F

.field private floatValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field private onAnimationEndListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;

.field private onAnimationUpdateListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;

.field private onTouchListener:Landroid/view/View$OnTouchListener;

.field private startStiffness:F

.field private startValue:F

.field private touchSlop:F

.field private velocity:F

.field private viewHolder:Ljava/lang/ref/WeakReference;

.field private viewParent:Landroid/view/ViewParent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x43af0000    # 350.0f

    .line 273
    iput v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->startStiffness:F

    .line 274
    iput v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->endStiffness:F

    const v0, 0x3f99999a    # 1.2f

    .line 275
    iput v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->dampingRatio:F

    .line 276
    iput v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->endDampingRatio:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 277
    iput v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->startValue:F

    const/4 v0, 0x0

    .line 278
    iput v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->velocity:F

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)F
    .locals 0

    .line 257
    iget p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->startValue:F

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)F
    .locals 0

    .line 257
    iget p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->finalValue:F

    return p0
.end method

.method static synthetic access$1000(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)Landroid/view/View$OnTouchListener;
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->onTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->onAnimationEndListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->onAnimationUpdateListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)F
    .locals 0

    .line 257
    iget p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->touchSlop:F

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)F
    .locals 0

    .line 257
    iget p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->endStiffness:F

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)F
    .locals 0

    .line 257
    iget p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->startStiffness:F

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)F
    .locals 0

    .line 257
    iget p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->dampingRatio:F

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)F
    .locals 0

    .line 257
    iget p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->endDampingRatio:F

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)Landroidx/dynamicanimation/animation/FloatValueHolder;
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->floatValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)F
    .locals 0

    .line 257
    iget p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->velocity:F

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->viewHolder:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->clickListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;

    return-object p0
.end method


# virtual methods
.method public addOnAnimationEndListener(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->onAnimationEndListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;

    return-object p0
.end method

.method public addOnAnimationUpdateListener(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->onAnimationUpdateListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;

    return-object p0
.end method

.method public build()Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->floatValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    if-eqz v0, :cond_0

    .line 361
    new-instance v0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;-><init>(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$1;)V

    return-object v0

    .line 359
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "property == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dampingRatio(F)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;
    .locals 0

    .line 333
    iput p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->dampingRatio:F

    return-object p0
.end method

.method public endDampingRatio(F)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;
    .locals 0

    .line 338
    iput p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->endDampingRatio:F

    return-object p0
.end method

.method public endStiffness(F)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;
    .locals 0

    .line 323
    iput p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->endStiffness:F

    return-object p0
.end method

.method public finalValue(F)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;
    .locals 0

    .line 302
    iput p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->finalValue:F

    return-object p0
.end method

.method public floatVlaueHolder(Landroidx/dynamicanimation/animation/FloatValueHolder;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->floatValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    return-object p0
.end method

.method public setOnClickListener(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->clickListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;

    return-object p0
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->onTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method public setRegretDistance(F)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;
    .locals 0

    .line 353
    iput p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->touchSlop:F

    return-object p0
.end method

.method public setViewParent(Landroid/view/ViewParent;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->viewParent:Landroid/view/ViewParent;

    return-object p0
.end method

.method public startStiffness(F)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;
    .locals 0

    .line 318
    iput p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->startStiffness:F

    return-object p0
.end method

.method public startValue(F)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;
    .locals 0

    .line 282
    iput p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->startValue:F

    return-object p0
.end method

.method public velocity(F)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;
    .locals 0

    .line 328
    iput p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->velocity:F

    return-object p0
.end method

.method public view(Landroid/view/View;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;
    .locals 1

    .line 307
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->viewHolder:Ljava/lang/ref/WeakReference;

    return-object p0
.end method
