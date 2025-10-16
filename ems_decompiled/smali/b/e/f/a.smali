.class public Lb/e/f/a;
.super Lb/e/f/c;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/e/f/c;-><init>()V

    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    new-instance v0, Lb/e/f/a$a;

    invoke-direct {v0, p0}, Lb/e/f/a$a;-><init>(Lb/e/f/a;)V

    sput-object v0, Lb/e/f/g;->r:Lb/e/f/g$a;

    return-void
.end method
