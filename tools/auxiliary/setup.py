from setuptools import setup

setup(
    name = "ToonTown Reloaded",
    packages = [
        'toontown',
        'otp'
    ],
    options = {
        'build_apps': {
            'gui_apps': {
                'ToonTown Reloaded': 'toontown/toonbase/ClientStartDist.py',
            },
            'plugins': [
                'pandagl',
                'p3openal_audio'
            ],
            'include_modules': {'*': [
                'toontown.*.*',
                'otp.*.*',
                'pandac.*.*',
                'direct.*.*',
            ]},
            'platforms': [
                'macosx_10_9_x86_64'
            ]
        }
    }
)
