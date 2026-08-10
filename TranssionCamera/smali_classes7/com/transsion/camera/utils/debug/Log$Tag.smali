.class public final Lcom/transsion/camera/utils/debug/Log$Tag;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/debug/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tag"
.end annotation


# static fields
.field private static final MAX_TAG_LEN:I = 0x11


# instance fields
.field mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/debug/Log$Tag;->update(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/utils/debug/Log$Tag;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public update(Ljava/lang/String;)V
    .locals 5

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/transsion/camera/utils/debug/Log$Tag;->MAX_TAG_LEN:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 47
    invoke-static {}, Lcom/transsion/camera/utils/debug/Log;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " chars longer than limit."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 49
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CamAp_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/utils/debug/Log$Tag;->mValue:Ljava/lang/String;

    return-void
.end method
