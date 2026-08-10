.class Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;
.super Ljava/lang/Object;
.source "OSWatchPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Circle"
.end annotation


# instance fields
.field public centerX:F

.field public centerY:F

.field public isSelected:Z

.field public radius:F

.field final synthetic this$0:Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;->this$0:Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "centerX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;->centerX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", centerY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;->centerY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", radius"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;->radius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", isSelected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/indicator/OSWatchPageIndicator$Circle;->isSelected:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
