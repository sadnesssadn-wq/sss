.class public Lb/v/a/a/h$b;
.super Lb/v/a/a/h$f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/v/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/v/a/a/h$f;-><init>()V

    return-void
.end method

.method public constructor <init>(Lb/v/a/a/h$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/v/a/a/h$f;-><init>(Lb/v/a/a/h$f;)V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
