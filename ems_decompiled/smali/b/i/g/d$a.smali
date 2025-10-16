.class public Lb/i/g/d$a;
.super Lb/i/j/m;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/i/g/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lb/i/f/c/g;


# direct methods
.method public constructor <init>(Lb/i/f/c/g;)V
    .locals 0

    invoke-direct {p0}, Lb/i/j/m;-><init>()V

    iput-object p1, p0, Lb/i/g/d$a;->a:Lb/i/f/c/g;

    return-void
.end method
