.class public Lcom/transsion/athena/data/f$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/athena/data/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Ljava/lang/String;

.field public d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/athena/data/f$a;->a:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lcom/transsion/athena/data/f$a;->b:J

    .line 4
    iput p4, p0, Lcom/transsion/athena/data/f$a;->d:I

    .line 5
    iput-object p5, p0, Lcom/transsion/athena/data/f$a;->c:Ljava/lang/String;

    return-void
.end method
