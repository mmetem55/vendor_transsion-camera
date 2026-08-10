.class Lcom/transsion/camera/ui/setting/level/Gradienter$1;
.super Ljava/lang/Object;
.source "Gradienter.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/level/Gradienter;->animateLevelIndicatorDegrees(FFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/level/Gradienter;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 97
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$000(Lcom/transsion/camera/ui/setting/level/Gradienter;)F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_a

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-static {v0, p1}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$002(Lcom/transsion/camera/ui/setting/level/Gradienter;F)F

    .line 100
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$000(Lcom/transsion/camera/ui/setting/level/Gradienter;)F

    move-result p1

    const/high16 v0, 0x42340000    # 45.0f

    cmpg-float p1, p1, v0

    const/high16 v1, -0x3dcc0000    # -45.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$000(Lcom/transsion/camera/ui/setting/level/Gradienter;)F

    move-result p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    .line 101
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-static {p1, v3}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$102(Lcom/transsion/camera/ui/setting/level/Gradienter;Z)Z

    .line 102
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$000(Lcom/transsion/camera/ui/setting/level/Gradienter;)F

    move-result p1

    const/high16 v0, 0x40400000    # 3.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    .line 103
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$000(Lcom/transsion/camera/ui/setting/level/Gradienter;)F

    move-result p1

    const/high16 v0, -0x3fc00000    # -3.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$002(Lcom/transsion/camera/ui/setting/level/Gradienter;F)F

    .line 105
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-static {p1, v3}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$202(Lcom/transsion/camera/ui/setting/level/Gradienter;Z)Z

    goto/16 :goto_0

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-static {p1, v2}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$202(Lcom/transsion/camera/ui/setting/level/Gradienter;Z)Z

    goto/16 :goto_0

    .line 109
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$000(Lcom/transsion/camera/ui/setting/level/Gradienter;)F

    move-result p1

    cmpl-float p1, p1, v0

    const/high16 v0, 0x43070000    # 135.0f

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$000(Lcom/transsion/camera/ui/setting/level/Gradienter;)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    .line 110
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-static {p1, v2}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$102(Lcom/transsion/camera/ui/setting/level/Gradienter;Z)Z

    .line 111
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$000(Lcom/transsion/camera/ui/setting/level/Gradienter;)F

    move-result p1

    const/high16 v0, 0x42ba0000    # 93.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    .line 112
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$000(Lcom/transsion/camera/ui/setting/level/Gradienter;)F

    move-result p1

    const/high16 v0, 0x42ae0000    # 87.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 113
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$002(Lcom/transsion/camera/ui/setting/level/Gradienter;F)F

    .line 114
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-static {p1, v3}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$202(Lcom/transsion/camera/ui/setting/level/Gradienter;Z)Z

    goto/16 :goto_0

    .line 116
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-static {p1, v2}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$202(Lcom/transsion/camera/ui/setting/level/Gradienter;Z)Z

    goto/16 :goto_0

    .line 118
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$000(Lcom/transsion/camera/ui/setting/level/Gradienter;)F

    move-result p1

    cmpg-float p1, p1, v1

    const/high16 v1, -0x3cf90000    # -135.0f

    if-gez p1, :cond_5

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$000(Lcom/transsion/camera/ui/setting/level/Gradienter;)F

    move-result p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_5

    .line 119
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-static {p1, v2}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$102(Lcom/transsion/camera/ui/setting/level/Gradienter;Z)Z

    .line 120
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$000(Lcom/transsion/camera/ui/setting/level/Gradienter;)F

    move-result p1

    const/high16 v0, -0x3d460000    # -93.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    .line 121
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$000(Lcom/transsion/camera/ui/setting/level/Gradienter;)F

    move-result p1

    const/high16 v0, -0x3d520000    # -87.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_4

    .line 122
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$002(Lcom/transsion/camera/ui/setting/level/Gradienter;F)F

    .line 123
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-static {p1, v3}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$202(Lcom/transsion/camera/ui/setting/level/Gradienter;Z)Z

    goto/16 :goto_0

    .line 125
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-static {p1, v2}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$202(Lcom/transsion/camera/ui/setting/level/Gradienter;Z)Z

    goto/16 :goto_0

    .line 127
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$000(Lcom/transsion/camera/ui/setting/level/Gradienter;)F

    move-result p1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_7

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$000(Lcom/transsion/camera/ui/setting/level/Gradienter;)F

    move-result p1

    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_7

    .line 128
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-static {p1, v3}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$102(Lcom/transsion/camera/ui/setting/level/Gradienter;Z)Z

    .line 129
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$000(Lcom/transsion/camera/ui/setting/level/Gradienter;)F

    move-result p1

    const/high16 v0, -0x3ccf0000    # -177.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_6

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    .line 130
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$000(Lcom/transsion/camera/ui/setting/level/Gradienter;)F

    move-result p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_6

    .line 131
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-static {p1, v1}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$002(Lcom/transsion/camera/ui/setting/level/Gradienter;F)F

    .line 132
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-static {p1, v3}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$202(Lcom/transsion/camera/ui/setting/level/Gradienter;Z)Z

    goto :goto_0

    .line 134
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-static {p1, v2}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$202(Lcom/transsion/camera/ui/setting/level/Gradienter;Z)Z

    goto :goto_0

    .line 136
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$000(Lcom/transsion/camera/ui/setting/level/Gradienter;)F

    move-result p1

    const/high16 v1, 0x43340000    # 180.0f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_9

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$000(Lcom/transsion/camera/ui/setting/level/Gradienter;)F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_9

    .line 137
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-static {p1, v3}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$102(Lcom/transsion/camera/ui/setting/level/Gradienter;Z)Z

    .line 138
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$000(Lcom/transsion/camera/ui/setting/level/Gradienter;)F

    move-result p1

    const/high16 v0, 0x43310000    # 177.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_8

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    .line 139
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$000(Lcom/transsion/camera/ui/setting/level/Gradienter;)F

    move-result p1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_8

    .line 140
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-static {p1, v1}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$002(Lcom/transsion/camera/ui/setting/level/Gradienter;F)F

    .line 141
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-static {p1, v3}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$202(Lcom/transsion/camera/ui/setting/level/Gradienter;Z)Z

    goto :goto_0

    .line 143
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-static {p1, v2}, Lcom/transsion/camera/ui/setting/level/Gradienter;->access$202(Lcom/transsion/camera/ui/setting/level/Gradienter;Z)Z

    .line 146
    :cond_9
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter$1;->this$0:Lcom/transsion/camera/ui/setting/level/Gradienter;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_a
    return-void
.end method
