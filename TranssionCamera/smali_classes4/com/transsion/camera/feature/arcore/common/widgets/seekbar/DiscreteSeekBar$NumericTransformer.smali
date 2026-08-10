.class public abstract Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar$NumericTransformer;
.super Ljava/lang/Object;
.source "DiscreteSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/DiscreteSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NumericTransformer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract transform(I)I
.end method

.method public transformToString(I)Ljava/lang/String;
    .locals 0

    .line 109
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public useStringTransform()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
