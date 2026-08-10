.class abstract Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;
.super Ljava/lang/Object;
.source "GLES20Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ShaderParameter"
.end annotation


# instance fields
.field public handle:I

.field protected final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas$ShaderParameter;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract loadHandle(I)V
.end method
