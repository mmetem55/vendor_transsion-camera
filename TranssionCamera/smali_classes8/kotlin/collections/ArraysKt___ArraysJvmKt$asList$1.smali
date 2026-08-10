.class public final Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$1;
.super Lkotlin/collections/AbstractList;
.source "_ArraysJvm.kt"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/ArraysKt___ArraysJvmKt;->asList([B)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractList<",
        "Ljava/lang/Byte;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final synthetic $this_asList:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    iput-object p1, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$1;->$this_asList:[B

    .line 140
    invoke-direct {p0}, Lkotlin/collections/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(B)Z
    .locals 0

    .line 143
    iget-object p0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$1;->$this_asList:[B

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([BB)Z

    move-result p0

    return p0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 140
    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$1;->contains(B)Z

    move-result p0

    return p0
.end method

.method public get(I)Ljava/lang/Byte;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 144
    iget-object p0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$1;->$this_asList:[B

    aget-byte p0, p0, p1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 140
    invoke-virtual {p0, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$1;->get(I)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .locals 0

    .line 141
    iget-object p0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$1;->$this_asList:[B

    array-length p0, p0

    return p0
.end method

.method public indexOf(B)I
    .locals 0

    .line 145
    iget-object p0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$1;->$this_asList:[B

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->indexOf([BB)I

    move-result p0

    return p0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 140
    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$1;->indexOf(B)I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 142
    iget-object p0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$1;->$this_asList:[B

    array-length p0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public lastIndexOf(B)I
    .locals 0

    .line 146
    iget-object p0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$1;->$this_asList:[B

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->lastIndexOf([BB)I

    move-result p0

    return p0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 140
    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$1;->lastIndexOf(B)I

    move-result p0

    return p0
.end method
