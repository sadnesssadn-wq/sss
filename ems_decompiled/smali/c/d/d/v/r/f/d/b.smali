.class public final Lc/d/d/v/r/f/d/b;
.super Lc/d/d/v/r/f/d/f;
.source ""


# direct methods
.method public constructor <init>(Lc/d/d/s/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/d/d/v/r/f/d/f;-><init>(Lc/d/d/s/a;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/StringBuilder;I)V
    .locals 1

    const/16 v0, 0x2710

    if-ge p2, v0, :cond_0

    const-string p2, "(3202)"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    const-string p2, "(3203)"

    goto :goto_0
.end method

.method public e(I)I
    .locals 1

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_0

    return p1

    :cond_0
    sub-int/2addr p1, v0

    return p1
.end method
